/*
	Optimal Read Normalization Algorithm:
	Developed by : Dilip A Durai and Marcel H Schulz
	ORNA uses GATB library for graph building and k-mer counting. We are thankful for their support
*/


#include <gatb/gatb_core.hpp>
#include <iostream>
#include <string.h>
#include <math.h>
#include <algorithm>

typedef Kmer<>::Type bloom;
static const char* STR_BASE = "-base";
static const char* STR_INPUT = "-input";
static const char* STR_OUTPUT = "-output";
static const char* STR_KMER = "-kmer";
static const char* STR_PAIR1 = "-pair1";
static const char* STR_PAIR2 = "-pair2";
static const char* STR_SORTING = "-sorting";

unsigned short getlength(IBank* bank)
{
	Iterator<Sequence>* it = bank->iterator();
	unsigned short max=0;
	for (it->first(); !it->isDone(); it->next())
    	{
		Sequence& seq = it->item();
		max = seq.getDataSize();	
		break;
    	}
	return max;		
}
int getnumber(IBank* bank)
{
	Iterator<Sequence>* it = bank->iterator();
	int seq_num=0;
	for (it->first(); !it->isDone(); it->next())
    	{
		seq_num++;
    	}
	return seq_num;
}

short calculateQuality(std::string qual)
{
	short score=0;
	for(unsigned int i=0;i<qual.length();i++)
	{
		score=score+(int(qual[i]));
	}
	return score;
}

int readacceptance(Graph graph, Kmer<>::ModelCanonical::Iterator itKmer, Kmer<>::ModelCanonical model, unsigned short *counter, double base){
	int acceptance=0;
	for (itKmer.first(); !itKmer.isDone(); itKmer.next())
	{
		std::string s = model.toString (itKmer->value());
		const char* sq = s.c_str();
		Node node = graph.buildNode(sq);
		double threshold=0;
		//Checking whether the node exists.
		auto index = graph.nodeMPHFIndex(node);
		auto abund = graph.queryAbundance(node);
		threshold = ceil((log(abund)/log(base)));
		if(threshold>abund)
		{
			threshold=abund;
		}
		if(threshold<1)
		{
			threshold=1;
		}
		if(counter[index] < threshold)
		{
			acceptance=acceptance+1;
			break;	
	       	}
	}
	return acceptance;
}

void singleend(const char* filename, const char* out_file, double base, unsigned short kmer, int nbCores)
{
	int count=0;
	
	//Multithreading functionality provided by GATB library
	Dispatcher dispatcher(nbCores) ;
	ISynchronizer* sync = System::thread().newSynchronizer();	//Locking a section

	//Variables required for GATB
	IBank* InputDataset = Bank::open (filename);
	ProgressIterator<Sequence> itSeq (*InputDataset);
	IBank* OutDataset = new BankFasta (out_file);
	
	//Creating a graph and an iterator. from the parameters. The threshold value is kept as the minimum abundance parameter of the graph. kmer size is the actual kmer+1
	Graph graph = Graph::create (Bank::open(filename), "-kmer-size %d -abundance-min 1", kmer);
	GraphIterator<Node> it = graph.iterator();

	long node_size= it.size();
	unsigned short *counter = new unsigned short[node_size];

	//Initializing the counter for each node in the de Bruijn graph
	for(int i=0;i<node_size;i++)
	{
	    counter[i]=0;
	}

	//Iterating over sequences the GATB way
	dispatcher.iterate (itSeq, [&] (Sequence& seq)
	{
		int length = seq.getDataSize();
		int flag=1;
		int gb = 1;
		int acceptance=0;

		Kmer<>::ModelCanonical model (kmer);
		Kmer<>::ModelCanonical::Iterator itKmer (model);
		itKmer.setData (seq.getData());
		char* data = seq.getDataBuffer();
	
		//checking the thresholding
		if(flag==1){
			acceptance=readacceptance(graph, itKmer, model, counter, base);
		}
		if(acceptance > 0)
		{
			for (itKmer.first(); !itKmer.isDone(); itKmer.next())
			{
				std::string s = model.toString (itKmer->value());
				const char* sq = s.c_str(); 
				Node node = graph.buildNode(sq);
				//Checking whether the node exists.
				if(graph.contains(node))
	       			{
					auto index = graph.nodeMPHFIndex(node);
					__sync_fetch_and_add (&counter[index], 1);
				}
			}
			sync->lock();
			OutDataset->insert(seq);
			count++;
			sync->unlock();
		}

	});
	std::cout << "Kept " << count << " reads" <<  std::endl;

	//Free the memory
	std::string filename1 = string(filename).substr(string(filename).find_last_of("/\\") + 1);
	size_t lindex = filename1.find_last_of(".");
	filename1 = (filename1.substr(0,lindex)) + string(".h5");
	remove(filename1.c_str());
	
	delete [] counter;
	InputDataset->flush();
	OutDataset->flush();	
}

void pairedend(const char* read1, const char* read2, const char* out_file, double base, unsigned short kmer)
{
	IBank* bank1 = Bank::open (read1);  
	LOCAL (bank1);
	IBank* bank2 = Bank::open (read2);  
	LOCAL (bank2);
				
	IBank* outBank = new BankFasta (out_file);

	Graph graph = Graph::create ("-in %s,%s -kmer-size %d -abundance-min 1", read1, read2, kmer);
	GraphIterator<Node> NodeIterator = graph.iterator();	
	long node_size= NodeIterator.size();
	unsigned short *counter = new unsigned short[node_size];
	
	for(int i=0;i<node_size;i++)
        {
            counter[i]=0;
        }

	int cnt=0;
	int count=0;
	int num_sequence=0;	
	int *pos;	
	int size;
	int index;
	unsigned short length;
	int tmp=0;

        PairedIterator<Sequence> itPair (bank1->iterator(), bank2->iterator());
        for(itPair.first(); !itPair.isDone(); itPair.next())
        {
        	num_sequence++;
        }
        
	std::vector<int> tempBank;
	
	Kmer<>::ModelCanonical model (kmer);
	Kmer<>::ModelCanonical::Iterator itKmer (model);
	Kmer<>::ModelCanonical::Iterator itKmer1 (model);
            
	//Iteration 1	
	for (itPair.first(); !itPair.isDone(); itPair.next())
        {
            Sequence& s1 = itPair.item().first;
            Sequence& s2 = itPair.item().second;
	    
	    int acceptance1=0;
	    int acceptance2=0;

	    itKmer.setData (s1.getData());
	    itKmer1.setData (s2.getData());
	    	    
	    //checking the thresholding
	    acceptance1 = readacceptance(graph, itKmer, model, counter, base);
	    acceptance2 = readacceptance(graph, itKmer1, model, counter, base);
	    if(acceptance1 > 0 && acceptance2>0)
	    {
		for (itKmer.first(); !itKmer.isDone(); itKmer.next())
	    	{
			std::string s = model.toString (itKmer->value());
			const char* sq = s.c_str();
			Node node = graph.buildNode(sq);
			double threshold=0;
			//Checking whether the node exists.
			if(graph.contains(node))
			{
				auto index = graph.nodeMPHFIndex(node);
				auto abund = graph.queryAbundance(node);
				threshold = ceil((log(abund)/log(base)));
				if(threshold>abund)
				{
					threshold=abund;
				}
				if(threshold<1)
				{
					threshold=1;
				}
				if(counter[index] < threshold)
				{
					counter[index]=counter[index]+1;
				}
			}
		}
		for (itKmer1.first(); !itKmer1.isDone(); itKmer1.next())
	    	{
			std::string s = model.toString (itKmer1->value());
			const char* sq = s.c_str();
			Node node = graph.buildNode(sq);
			double threshold=0;
			//Checking whether the node exists.
			if(graph.contains(node))
			{
				auto index = graph.nodeMPHFIndex(node);
				auto abund = graph.queryAbundance(node);
				threshold = ceil((log(abund)/log(base)));
				if(threshold>abund)
				{
					threshold=abund;
				}
				if(threshold<1)
				{
					threshold=1;
				}
				if(counter[index] < threshold)
				{
					counter[index]=counter[index]+1;
				}
			}
	    	}
	    	outBank->insert(s1);
		outBank->insert(s2);
		count++;
	    }
	    else if(acceptance1>0 || acceptance2>0){
	      	tempBank.push_back(tmp);
	    }
	    else{
	    }
	    tmp++;
        }
        
	int coun=0;
	unsigned int tmp_index=0;
	std::cout << "Second Iteration" <<  std::endl;
	
	for (itPair.first(); !itPair.isDone() && tmp_index<tempBank.size(); itPair.next())
	{
        	if(coun==tempBank[tmp_index])
        	{
		    Sequence& s1 = itPair.item().first;
		    Sequence& s2 = itPair.item().second;
		    
		    int acceptance1=0;
		    int acceptance2=0;
		    int acceptance=0;

		    itKmer.setData (s1.getData());
		    itKmer1.setData (s2.getData());
		    	    
		    //checking the thresholding
		    acceptance1 = readacceptance(graph, itKmer, model, counter, base);
		    acceptance2 = readacceptance(graph, itKmer1, model, counter, base);
		    	    
		    if(acceptance1 > 0 || acceptance2 > 0)
		    {
			for (itKmer1.first(); !itKmer1.isDone(); itKmer1.next())
		    	{
				std::string s = model.toString (itKmer->value());
				const char* sq = s.c_str();
				Node node = graph.buildNode(sq);
				double threshold=0;
				//Checking whether the node exists.
				if(graph.contains(node)){
					auto index = graph.nodeMPHFIndex(node);
					auto abund = graph.queryAbundance(node);
					threshold = ceil((log(abund)/log(base)));
					if(threshold>abund){
						threshold=abund;
					}
					if(threshold<1){
						threshold=1;
					}
					if(counter[index] < threshold){
						counter[index]=counter[index]+1;
					}
				}
			}
			for (itKmer.first(); !itKmer.isDone(); itKmer.next())
		    	{
				std::string s = model.toString (itKmer->value());
				const char* sq = s.c_str();
				Node node = graph.buildNode(sq);
				double threshold=0;
				//Checking whether the node exists.
				if(graph.contains(node))
				{
					auto index = graph.nodeMPHFIndex(node);
					auto abund = graph.queryAbundance(node);
					threshold = ceil((log(abund)/log(base)));
					if(threshold>abund)
					{
						threshold=abund;
					}
					if(threshold<1)
					{
						threshold=1;
					}
					if(counter[index] < threshold)
					{
						counter[index]=counter[index]+1;
					}
				}
		    	}
			outBank->insert(s1);
			outBank->insert(s2);
			count++;
		   }
		   tmp_index++;
		}
		coun++;
        }
	std::cout << "kept " << count << " reads" <<  std::endl;
	bank1->flush();
	bank2->flush();
	delete [] counter;
	outBank->flush();
}

void srting(IBank* bank, const char* out_file, double base, unsigned short kmer, int nbCores)
{
	std::string s = out_file;
	std::string srted = "_Sorted.fa";
	const char* tmpf;
	s=s+srted;
	const char* srt_file = s.c_str();
	ProgressIterator<Sequence> itSeq (*bank);
	IBank* outBank = new BankFasta (srt_file);
	unsigned int seq_number=getnumber(bank);		
	Sequence *sorted = new Sequence[seq_number+1];	
	unsigned short max = getlength(bank);		
	unsigned int *quality = new unsigned int[max*75];
	for(int i=0;i<(max*75);i++)
	{
		quality[i]=0;
	}
	for(itSeq.first();!itSeq.isDone(); itSeq.next())
	{
		Sequence& seq = itSeq.item();
		std::string qual_string = seq.getQuality();
		short qual = calculateQuality(qual_string);	
		quality[max*75-qual]+=1;
	}
	for(int i=1;i<(max*75);i++)
	{
		quality[i]+=quality[i-1];
	}
	for(itSeq.first();!itSeq.isDone(); itSeq.next())
	{
		Sequence& seq = itSeq.item();
		std::string qual_string = seq.getQuality();
		short qual = calculateQuality(qual_string);
		sorted[quality[max*75-qual]] = seq;
		quality[max*75-qual]-=1;	
	}
	for(unsigned int i=1;i<seq_number;i++)
	{
		outBank->insert(sorted[i]);
	}
	outBank->flush();
	bank->flush();
	delete [] sorted;
	delete [] quality;
	singleend(srt_file, out_file, base, kmer, nbCores);
}

class ORNA : public Tool
{
public:
	ORNA(): Tool("ORNA")
	{
		getParser()->push_front (new OptionOneParam (STR_KMER, "kmer required",  false, "21"));				
	        getParser()->push_front (new OptionOneParam (STR_INPUT, "Input File",  false, "ORNAERROR"));
	        getParser()->push_front (new OptionOneParam (STR_OUTPUT, "Output File",  false, "Normalized.fa"));
		getParser()->push_front (new OptionOneParam (STR_BASE, "Base for the logarithmic function",  false, "1.7"));
		getParser()->push_front (new OptionOneParam (STR_PAIR1, "First read of the pair", false, "ORNAERROR" ));
		getParser()->push_front (new OptionOneParam (STR_PAIR2, "Second read of the pair", false, "ORNAERROR" ));	
		getParser()->push_front (new OptionOneParam (STR_SORTING, "Quality Sorting", false, "0" ));
	}
	void execute()
	{
		const char* filename = (getInput()->get(STR_INPUT))->getString();
		const char* read1= (getInput()->get(STR_PAIR1))->getString(); 
		const char* read2= (getInput()->get(STR_PAIR2))->getString();
		double base=getInput()->getDouble(STR_BASE);
		int user_kmer = getInput()->getInt(STR_KMER);
		short sorting = getInput()->getInt(STR_SORTING);
		const char* out_file= (getInput()->get(STR_OUTPUT))->getString();
		int nbCores = getInput()->getInt(STR_NB_CORES);
		unsigned short pairflag = 0; 
		unsigned short kmer = user_kmer + 1; 
		unsigned short cores = sysconf(_SC_NPROCESSORS_ONLN);
		IBank* bank;
		IBank* bank1;
		IBank* bank2;	
 
		if(nbCores==cores){
			nbCores=1;		
		} 
		if(std::strcmp(filename, "ORNAERROR") == 0)
		{
			if((std::strcmp(read1, "ORNAERROR") == 0) && (std::strcmp(read2, "ORNAERROR") == 0))
			{
				std::cout << "Input File(s) missing. Please refer to the help" << std::endl;
			}
			if (((std::strcmp(read1, "ORNAERROR") != 0) && (std::strcmp(read2, "ORNAERROR") == 0)) || ((std::strcmp(read1, "ORNAERROR") == 0) && (std::strcmp(read2, "ORNAERROR") != 0)))
			{
				std::cout << "One of the pair files is missing. Please refer to the help" << std::endl;	
			}
			if((std::strcmp(read1, "ORNAERROR") != 0) && (std::strcmp(read2, "ORNAERROR") != 0))
			{
				pairflag = 1; 
			}				
		}
		if(pairflag==0)
		{
			if(sorting==0)
			{
				std::cout << "Running ORNA in single end mode" << std::endl;
				singleend(filename, out_file, base, kmer, nbCores);
			}
			else
			{
				bank = Bank::open(filename);
				std::cout << "Running sorting and ORNA in single end mode" << std::endl;
				srting(bank, out_file, base, kmer, nbCores);
			}
		}
		else
		{
			if(sorting==0)
			{
				std::cout << "Running ORNA in paired end mode" << std::endl;
				pairedend(read1, read2, out_file, base, kmer);
			}
			else{
				std::cout << "Sorting does not work in paired end mode. Please combine the files and run it in single end mode" << std::endl;
			}
		}	
	}
};

int main (int argc, char* argv[])
{
	try{
		ORNA().run(argc,argv);
		return EXIT_SUCCESS;	
	}

	catch(Exception& e){
		std::cout << "EXCEPTION: " << e.getMessage() << std::endl;
        	return EXIT_FAILURE;
	}
     	
}


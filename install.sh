git submodule init;
git submodule update;
bash gatb-core/gatb-core/scripts/NewProject/NewProject.sh -d $(pwd) -n ORNA;
export cwd=$(pwd);
mkdir ORNA/build;
cd ORNA/build;
cmake ..;
make -j 10;
echo $cwd;
cp $cwd/src/main.cpp $cwd/ORNA/tools/ORNA/src/main.cpp;
make -j 10;

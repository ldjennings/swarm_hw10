mkdir build
cd build
echo STARTING CMAKE
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
echo FINISHED CMAKE, STARTING MAKE
make
echo FINISHED MAKE, ALL DONE
cd ..
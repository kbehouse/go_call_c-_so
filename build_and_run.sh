# build .so
cd cpp/
mkdir build/
cd build/
cmake ..
make -j4
cp libmyso.so ../../libmyso.so

# copy .hxx
cd ../
cp wrap_point.hxx ../

# build go 
cd ../
go build -o exe


# run 
export LD_LIBRARY_PATH=.
./exe
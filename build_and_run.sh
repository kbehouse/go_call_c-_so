rm -rf libs/
mkdir libs/
cd libs
cmake ..
make -j4

cd .. 
go build -o exe
./exe
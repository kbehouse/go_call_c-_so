rm -rf libs/
mkdir libs/
cd libs
cmake ..
cd .. 
go build -o exe
./exe
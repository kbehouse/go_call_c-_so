
# Call C++ from Go with shared library

Modify From: https://github.com/draffensperger/go-interlang/tree/master/go_to_cxx/c_wrapper

## Build & Run

```
sh build_and_run.sh
```

### Build .so

```
cd cpp/
mkdir build/
cd build/
cmake ..
make -j4
cp libmyso.so ../../libmyso.so
```

### copy .hxx

```
cd ../
cp wrap_point.hxx ../
```

### build go 
```
cd ../
go build -o exe
```

### Run
```
export LD_LIBRARY_PATH=.
./exe
```


## Note

1. Add *#cgo LDFLAGS: -L"${SRCDIR}/libs"* to  main.go

2. Generate .so look CMakeLists.txt 
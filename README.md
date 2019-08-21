
# Call C++ from Go with shared library

Modify From: https://github.com/draffensperger/go-interlang/tree/master/go_to_cxx/c_wrapper

## Build & Run

```
sh ./exe
```

### Build 

```
mkdir libs/
cd libs
cmake ..
cd .. 
go build -o exe
```

### Run

```
./exe
```

## Note

1. Add *#cgo LDFLAGS: -L"${SRCDIR}/libs"* to  main.go

2. Generate .so look CMakeLists.txt 
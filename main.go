package main

/*
#cgo LDFLAGS: -L"${SRCDIR}/libs"
#include "wrap_point.hxx"
*/
import "C"

import "fmt"

func main() {
	fmt.Println("Hi c using so")
	distance := C.distance_between(1.0, 1.0, 2.0, 2.0)
	fmt.Printf("Go has result, distance is: %v\n", distance)
}

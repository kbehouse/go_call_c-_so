project(myso LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

add_library(myso SHARED point.cxx point.hxx wrap_point.cxx wrap_point.hxx)
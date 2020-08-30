cmake_minimum_required(VERSION 3.10)
project(MyList)

set(CMAKE_CXX_STANDARD 14)

#include_directories(src) //if headers appear, add this

#add_subdirectory(src)
add_subdirectory(tst)
add_subdirectory(inc/googletest)
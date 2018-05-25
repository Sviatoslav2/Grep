cmake_minimum_required(VERSION 3.5.1)
project(grep)
find_package(Boost 1.45.0 COMPONENTS filesystem system)
set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp)
add_executable(grep ${SOURCE_FILES})
target_link_libraries(grep ${Boost_LIBRARIES})
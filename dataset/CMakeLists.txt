cmake_minimum_required(VERSION 3.6)
project(tvm_deployment_test)

set(CMAKE_C_COMPILER /home/jxz372/settings/build/bin/clang)
set(CMAKE_CXX_COMPILER /home/jxz372/settings/build/bin/clang++)

# print LLVM IR
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -ldl -pthread -Wno-unused-command-line-argument")
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
SET(HOME_TVM /home/jxz372/settings/tvm)
find_package(OpenCV REQUIRED)

INCLUDE_DIRECTORIES(${OpenCV_INCLUDE_DIRS})
INCLUDE_DIRECTORIES(${HOME_TVM}/include)
INCLUDE_DIRECTORIES(${HOME_TVM}/3rdparty/dmlc-core/include)
INCLUDE_DIRECTORIES(${HOME_TVM}/3rdparty/dlpack/include)
add_executable(tvm_deployment_test  tvm_runtime_pack.cc Deployment.cpp)
target_link_libraries(tvm_deployment_test ${OpenCV_LIBS})
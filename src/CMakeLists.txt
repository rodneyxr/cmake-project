cmake_minimum_required(VERSION 2.8)
project(cmake-project)

# Set source folder
set(CMAKE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../")
set(CMAKE_CURRENT_SOURCE_DIR ${CMAKE_SOURCE_DIR})

# Set our binary folder
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)

# Make sure we can import our CMake functions
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# Import our CMake modules
include(AddCXXCompilerFlag)

# Add some compiler flags
add_cxx_compiler_flag(-std=c++11)
add_cxx_compiler_flag(-Wall)
add_cxx_compiler_flag(-pthread)
add_cxx_compiler_flag(-fopenmp)

add_executable(${PROJECT_NAME}.bin "main.cpp")

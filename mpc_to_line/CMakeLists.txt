project(mpc)

cmake_minimum_required (VERSION 3.5)

# -g allows for gdb debugging
# turn on -03 for best performance
add_definitions(-std=c++11 -O3)

set(CXX_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS, "${CXX_FLAGS}")

set(sources src/MPC.cpp)
set(sol src/MPC_sol.cpp)

include_directories(src/Eigen-3.3)
include_directories(/usr/local/include)
link_directories(/usr/local/lib)

add_executable(mpc ${sources})
add_executable(mpcs ${sol})

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
target_link_libraries(mpc ipopt python2.7)
else()
target_link_libraries(mpc ipopt python)
endif()

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
target_link_libraries(mpcs ipopt python2.7)
else()
target_link_libraries(mpcs ipopt python)
endif()

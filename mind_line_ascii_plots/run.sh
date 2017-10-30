#!/bin/bash
# Script to run Mind the Line Quiz, with ascii output
# used for terminals without convenient graphics access
# examples: dummmy linux terminals, docker containers

# create data directory to house data exports from MPC.cpp
mkdir data

# Run Mind the LIne
cd ./build
./mpc

# plot data with gnuplot 
cd ../src
gnuplot plot_data_ascii.plot
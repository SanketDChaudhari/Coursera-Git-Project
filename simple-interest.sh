#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local interest

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Main script execution
echo "Enter principal amount:"
read principal
echo "Enter rate of interest (in %):"
read rate
echo "Enter time period (in years):"
read time

calculate_simple_interest $principal $rate $time

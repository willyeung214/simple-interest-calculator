#!/bin/bash

# Simple Interest Calculation

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "Simple Interest: $interest"
}

# Main script
main() {
    echo "Enter principal amount: "
    read principal

    echo "Enter interest rate: "
    read rate

    echo "Enter time period (in years): "
    read time

    calculate_simple_interest $principal $rate $time
}

# Run the main script
main
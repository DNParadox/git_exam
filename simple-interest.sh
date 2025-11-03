#!/usr/bin/env bash

set -euo pipefail

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the rate of interest per year (%): " rate
read -r -p "Enter the time period in years: " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

printf "\nSimple Interest = %s\n" "$simple_interest"

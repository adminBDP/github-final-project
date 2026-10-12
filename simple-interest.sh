#!/usr/bin/env bash
# Calculate simple interest using a percentage annual rate.
set -eu
export LC_ALL=C

read_number() {
    local value
    printf '%s' "$1" >&2
    if ! IFS= read -r value; then
        printf '\nError: input is required.\n' >&2
        return 1
    fi
    if [[ ! "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        printf 'Error: enter a nonnegative number.\n' >&2
        return 1
    fi
    printf '%s' "$value"
}

principal=$(read_number 'Enter principal amount: ')
rate=$(read_number 'Enter annual rate of interest (percent): ')
time=$(read_number 'Enter time period (years): ')

awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "Simple interest: %.2f\n", p * r * t / 100 }'

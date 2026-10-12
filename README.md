# Simple Interest Calculator

A calculator that calculates simple interest given principal, annual rate of interest and time period in years.

## Input

- p: principal amount
- r: annual rate of interest, entered as a percentage (5 means 5%)
- t: time period in years

## Output

Simple interest = p * t * r / 100. If the rate is expressed as a decimal instead, the equivalent formula is p * t * r.

Simple interest is calculated on the original principal and does not compound.

## Usage

Requires Bash and awk. Run:

```bash
bash simple-interest.sh
```

Enter the principal, annual rate, and time when prompted. For principal 1000, annual rate 5, and time 2, the output is `Simple interest: 100.00`. Nonnegative whole numbers and decimals are supported; invalid or missing input produces an error.

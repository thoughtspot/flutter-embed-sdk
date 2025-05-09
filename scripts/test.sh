#!/bin/bash

set -e

# Colors
RED='\033[31m'
GREEN='\033[32m'
NC='\033[0m' # No Color

# Config
THRESHOLD=80
RUN_COVERAGE=false

# Parse arguments
for arg in "$@"; do
  if [[ "$arg" == "--coverage" ]]; then
    RUN_COVERAGE=true
  else
    echo "Unknown option: $arg"
    exit 1
  fi
done

# Run tests
if $RUN_COVERAGE; then
  flutter test --coverage
  genhtml coverage/lcov.info --output-directory coverage/html

  # Process coverage data
  lcov --config-file .lcovrc --summary coverage/lcov.info > coverage/summary.txt
  lcov --config-file .lcovrc --list coverage/lcov.info > coverage/detailed.txt

  # Print coverage summary and details
  echo "Coverage Summary:"
  cat coverage/summary.txt
  echo -e "\nDetailed Coverage:"
  cat coverage/detailed.txt

  # Get coverage percentage
  COVERAGE=$(lcov --config-file .lcovrc --summary coverage/lcov.info | grep "lines" | awk -F: '{print $2}' | cut -d "%" -f 1 | tr -d " ")

  printf "\nOverall Coverage: %.2f%% " "$COVERAGE"
  if (( $(echo "$COVERAGE >= $THRESHOLD" | bc -l) )); then
    echo -e "${GREEN}✓${NC}"
  else
    echo -e "${RED}✗ (threshold: $THRESHOLD%)${NC}"
    exit 1
  fi
else
  flutter test
fi

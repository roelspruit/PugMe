#!/bin/sh

# Define output file. Change "$PROJECT_DIR/${PROJECT_NAME}Tests" to your test's root source folder, if it's not the default name.
OUTPUT_DIR=$(dirname "${SCRIPT_OUTPUT_FILE_0}")
mkdir -p "$OUTPUT_DIR"

# Generate mock files, include as many input files as you'd like to create mocks for.
"${PODS_ROOT}/Cuckoo/run" generate --testable "$PROJECT_NAME" \
--output "${SCRIPT_OUTPUT_FILE_0}" \
"${SCRIPT_INPUT_FILE_0}"

# After running once, locate `GeneratedMocks.swift` and drag it into your Xcode test target group.

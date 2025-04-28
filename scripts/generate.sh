#!/bin/bash

# Clean any previously generated files first
flutter pub run build_runner clean

# Generate files with build_runner
# --delete-conflicting-outputs ensures clean generation
flutter pub run build_runner build --delete-conflicting-outputs 
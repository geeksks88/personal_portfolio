#!/bin/sh
# Exit if any command fails
set -e

# Clone the stable channel of the Flutter repository
git clone https://github.com/flutter/flutter.git --depth 1 --branch stable $HOME/flutter
export PATH="$PATH:$HOME/flutter/bin"

# Run flutter doctor to confirm setup
flutter doctor

# Get dependencies
flutter pub get

# Build the web application for release
flutter build web --release
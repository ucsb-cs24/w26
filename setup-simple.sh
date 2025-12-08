#!/usr/bin/env bash

echo "Installing Jekyll dependencies using system Ruby..."
echo ""
echo "Note: This uses your system Ruby (2.6.10)."
echo "For production, you may want to upgrade to Ruby 3.3.6."
echo ""

# Check if bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "Installing bundler..."
    gem install bundler --user-install
fi

# Install Jekyll and dependencies
echo "Installing Jekyll and dependencies..."
bundle install --path vendor/bundle

echo ""
echo "Setup complete!"
echo ""
echo "To run Jekyll locally:"
echo "  bundle exec jekyll serve"
echo ""
echo "Site will be available at: http://localhost:4000/w26"

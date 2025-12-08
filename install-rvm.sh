#!/usr/bin/env bash

echo "Installing RVM (Ruby Version Manager)..."
echo ""

# Install GPG keys for RVM
echo "Step 1: Installing GPG keys..."
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Install RVM with Ruby
echo ""
echo "Step 2: Installing RVM..."
curl -sSL https://get.rvm.io | bash -s stable

# Load RVM into current shell
echo ""
echo "Step 3: Loading RVM into current shell..."
source ~/.rvm/scripts/rvm

echo ""
echo "RVM installation complete!"
echo ""
echo "IMPORTANT: Please run the following command to load RVM in your current terminal:"
echo ""
echo "    source ~/.rvm/scripts/rvm"
echo ""
echo "Then run ./setup.sh to complete the Jekyll setup."
echo ""
echo "Note: RVM will be automatically loaded in new terminal sessions."

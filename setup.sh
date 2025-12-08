#!/usr/bin/env bash

echo "Installing software needed to run Jekyll locally... "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

rvm install ruby-3.1.6
rvm use 3.1.6
gem install bundler
gem install pkg-config
gem install nokogiri
# bundle config build.nokogiri --use-system-libraries
bundle config set path 'vendor/bundle'
bundle install
echo "Done."

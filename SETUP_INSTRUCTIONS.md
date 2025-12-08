# Setup Instructions for CS24 W26 Site

RVM (Ruby Version Manager) has been installed successfully! Now you need to complete the Ruby installation.

## Option 1: Complete RVM Setup (Recommended)

RVM needs Homebrew to compile Ruby 3.3.6. Follow these steps:

### Step 1: Open a NEW terminal window
```bash
cd /Users/diba/Documents/cs24/w26
```

### Step 2: Install Ruby via RVM (this will install Homebrew if needed)
```bash
rvm install ruby-3.3.6
```

When prompted about Homebrew installation location, just **press ENTER** to use the default `/usr/local`.

This will take 5-15 minutes as it compiles Ruby.

### Step 3: Once Ruby is installed, run the setup script
```bash
./setup.sh
```

### Step 4: Run Jekyll
```bash
./jekyll.sh
```

Visit: http://localhost:4000/w26

---

## Option 2: Quick Start with System Ruby (If RVM is giving you trouble)

If you want to get started quickly without waiting for RVM:

### Step 1: Update Gemfile to work with system Ruby
```bash
cd /Users/diba/Documents/cs24/w26
```

Edit `Gemfile` and change line 2 from:
```ruby
ruby "3.3.6"
```
to:
```ruby
ruby "2.6.10"
```

### Step 2: Install dependencies
```bash
gem install bundler --user-install
bundle install --path vendor/bundle
```

### Step 3: Run Jekyll
```bash
bundle exec jekyll serve
```

Visit: http://localhost:4000/w26

**Note:** System Ruby 2.6.10 is old and may have security issues. For production, Option 1 (RVM with Ruby 3.3.6) is strongly recommended.

---

## Option 3: Install Homebrew + Ruby Manually (Alternative to RVM)

If RVM isn't working:

### Step 1: Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Step 2: Install Ruby 3.3
```bash
brew install ruby@3.3
echo 'export PATH="/usr/local/opt/ruby@3.3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Step 3: Install Jekyll dependencies
```bash
cd /Users/diba/Documents/cs24/w26
gem install bundler
bundle install
```

### Step 4: Run Jekyll
```bash
bundle exec jekyll serve
```

Visit: http://localhost:4000/w26

---

## Troubleshooting

### If you see "Required ruby-3.3.6 is not installed"
This means RVM is loaded but Ruby isn't installed yet. Run:
```bash
rvm install ruby-3.3.6
```

### If RVM installation hangs
Open a NEW terminal window and try again. RVM modifies your shell profile and needs a fresh terminal to work properly.

### If you want to remove RVM and start over
```bash
rvm implode
rm -rf ~/.rvm
```

Then choose Option 2 or Option 3 above.

---

## Current Status

✅ RVM is installed
❌ Ruby 3.3.6 needs to be installed (via `rvm install ruby-3.3.6`)

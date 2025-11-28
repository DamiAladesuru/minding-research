#!/bin/bash

echo "🚀 Setting up Minding Research Jekyll site..."
echo ""

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby 2.7 or higher."
    echo "Visit: https://www.ruby-lang.org/en/documentation/installation/"
    exit 1
fi

echo "✅ Ruby found: $(ruby --version)"

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "📦 Installing Bundler..."
    gem install bundler
fi

echo "✅ Bundler found: $(bundle --version)"

# Install dependencies
echo ""
echo "📦 Installing Jekyll and dependencies..."
bundle install

echo ""
echo "✅ Setup complete!"
echo ""
echo "To start your site:"
echo "  bundle exec jekyll serve"
echo ""
echo "Then visit: http://localhost:4000"
echo ""
echo "📝 Don't forget to customize:"
echo "  - _config.yml (site settings)"
echo "  - about.md (your bio)"
echo "  - _data/navigation.yml (menu items)"
echo ""

#!/bin/bash
# command to install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# command to install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add Homebrew to PATH for Apple Silicon Macs
if [[ $(uname -m) == 'arm64' ]]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install packages from my_brew.txt file (created by brew leaves)
[[ -f "my_brew.txt" ]] && { echo "Installing packages from my_brew.txt..."; brew install $(cat my_brew.txt); echo "Finished installing packages from my_brew.txt"; } || echo "my_brew.txt file not found. Skipping package installation."
# Update brew and cleanup
brew update
brew cleanup

echo "Setup complete!"
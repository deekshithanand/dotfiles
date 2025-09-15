# Dotfiles Repository

Welcome to my **dotfiles repository** 👋  

This repository uses Git’s **bare repository** feature to manage and sync dotfiles across multiple systems (Linux, macOS, etc.) without cluttering your home directory with an extra `.git` folder.  

👉 More about the dotfiles + bare repo setup can be found here: [Atlassian Git Tutorial on Dotfiles](https://www.atlassian.com/git/tutorials/dotfiles).

---

## 📂 Branches and Use Cases

- **`master` (default)**  
  Contains base setup scripts for installing essential tools and performing the initial configuration.  
- **`mac` / `linux` branches (planned)**  
  Will contain OS-specific overrides and configurations after the initial setup.

---

## 🚀 Usage Instructions

### 1. Initial Setup (on a new machine)

```bash
# Initialize a bare repo in your $HOME directory
git init --bare $HOME/.dotfiles

# Define an alias for convenience
alias dotf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Add remote (replace with your forked repo if needed)
dotf remote add origin git@github.com:deekshithanand/dotfiles.git
```
### 2. Replicating on Another System

```bash
### 1. Initial Setup (on a new machine)
# Clone into a temporary directory while keeping .git in $HOME/.dotfiles
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/deekshithanand/dotfiles.git dotfiles-tmp

# Sync files into $HOME
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/

# Clean up temporary directory
rm --recursive dotfiles-tmp
```

### 3. Configure Git for Cleaner Status

```bash
# Don’t show untracked files (avoids noise from other $HOME files)
mydotfiles config status.showUntrackedFiles no

# Ensure correct remote is set
mydotfiles remote set-url origin git@github.com:deekshithanand/dotfiles.git
```

### 4. Day-to-Day Usage
```bash
# Check repo status
mydotfiles status

# Add a new dotfile
mydotfiles add .gitconfig

# Commit changes
mydotfiles commit -m "Add gitconfig"

# Push changes
mydotfiles push
```

## 🤝 Contribution / Forking
Feel free to fork this repo and tailor it to your own needs.
Dotfiles are highly personal, but the bare repo technique keeps things clean and reproducible across environments.
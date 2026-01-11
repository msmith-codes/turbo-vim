# Turbo Vim 
Yet Another NeoVim distro, but light weight.

## 🛠️  Installation
### Prerequisites
* **Neovim:** Ensure you have Neovim version 0.10 or higher installed.
* **Git:** Required for cloning the repository and managing plugins.
> **Note:** This guide assumes you are using Linux or macOS. If you are using Windows, I'd recommend installing WSL2. 

### Steps
1. Backup Existing Configuration (If Exists):
```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone This Repository:
```sh
git clone https://github.com/msmith-codes/neovimrc.git ~/.config/nvim
```
or Windows Powershell
```batch
git clone https://github.com/msmith-codes/neovimrc.git $ENV:USERPROFILE\AppData\Local\nvim
```

3. Launch Neovim:
```sh
nvim
```

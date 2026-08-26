# Turbo Vim 
Yet Another neovim distro, but light weight and easy to customize.

## 🛠️ Installation
### Prerequisites
* **Neovim:** Ensure you have Neovim version 0.12 or higher installed.
* **Git:** Required for cloning the repository and managing plugins.
* **Ripgrep:** Required for livegrep to work.

### Steps
1. Backup Existing Configuration (If Exists):
```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone This Repository:
```sh
git clone https://github.com/msmith-codes/turbo-vim.git ~/.config/nvim
```
Windows Powershell
```powershell
git clone https://github.com/msmith-codes/turbo-vim.git $ENV:USERPROFILE\AppData\Local\nvim
```

3. Launch Neovim:
```sh
nvim
```

### Configuration
All configuration is done using the `~/.config/nvim/lua/config.lua` file.  

### Other Notes

#### cmake-language-server
If cmake-language-server is not installed you will get an error, this can safely be ignored.
If the error bothers you, you can install cmake-language-server by doing the following:

**Arch Linux**
```sh
sudo pacman -S python-pipx
pipx install git+https://github.com/regen100/cmake-language-server.git@refs/pull/104/head
```

**Fedora**
```sh
pip install git+https://github.com/regen100/cmake-language-server.git@refs/pull/104/head
```

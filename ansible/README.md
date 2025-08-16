# Fish Shell Ansible Setup

This Ansible playbook sets up a complete Fish shell environment with modern CLI tools across multiple machines.

## What it installs

### Core Components
- **Fish Shell** - Modern shell with great autocompletion and scripting
- **Essential Build Tools** - build-essential, pkg-config, bison, flex, cmake, autoconf, etc.
- **mise** - Runtime version manager for Node.js, Python, Go, Rust, and more
- **Rust Toolchain** - rustup, cargo, and cargo-binstall for fast binary installs

### Modern CLI Tools (via cargo-binstall)
- **ripgrep** (rg) - Fast text search
- **fd-find** (fd) - Fast file finder
- **tokei** - Code statistics  
- **bat** - Enhanced cat with syntax highlighting
- **du-dust** (dust) - Better du disk usage
- **bottom** (btm) - System monitor
- **xh** - HTTP client
- **starship** - Cross-shell prompt
- **atuin** - Shell history management
- **zoxide** - Smart directory navigation
- **lsd** - Enhanced ls with colors and icons

### Fish Configuration
- Complete Fish shell configuration from this repository
- Custom abbreviations for productivity
- Vi key bindings
- Modern tool integrations (fzf, starship, atuin, zoxide)
- Fisher plugin manager setup

## Usage

### Run on localhost (current machine)
```bash
cd ansible
ansible-playbook fish-setup.yml
```

### Run on specific machines
```bash
# Edit inventory/hosts.yml to add your machines
ansible-playbook fish-setup.yml -l desktop-machine
```

### Run specific roles only
```bash
# Install just Rust toolchain
ansible-playbook fish-setup.yml --tags rust-toolchain

# Install just Fish configuration  
ansible-playbook fish-setup.yml --tags fish-config
```

## Configuration

### Adding Machines
Edit `inventory/hosts.yml`:
```yaml
fish_machines:
  hosts:
    my-laptop:
      ansible_host: 192.168.1.100
      ansible_user: myuser
    my-desktop:
      ansible_host: 192.168.1.101  
      ansible_user: myuser
```

### Customizing Variables
Edit `group_vars/all.yml` to modify:
- Default user (`fish_user`)
- CLI tools to install
- Installation paths

## Requirements

- Ansible 2.9+
- Target machines with Python 3
- SSH access to remote machines (if not running locally)
- Internet access for downloading tools

## Notes

- The playbook supports Debian/Ubuntu, Arch Linux, and Fedora
- Fish will be set as the default shell for the target user
- All configurations are backed up before being replaced
- Some tools may be installed via package manager if available, others via cargo-binstall
- The setup is idempotent - safe to run multiple times
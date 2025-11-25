# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Fish shell configuration repository containing personal dotfiles and customizations. The configuration sets up an enhanced shell environment with modern CLI tools, vi key bindings, and custom abbreviations.

## Installation

**Important**: This repository contains only the Fish shell configuration files. For automated installation of Fish shell, modern CLI tools, and these configurations, use the [stonecharioteer/distributed-dotfiles](https://github.com/stonecharioteer/distributed-dotfiles) repository instead.

The distributed-dotfiles repository (located at `~/code/checkouts/personal/distributed-dotfiles`) provides comprehensive setup automation including:
- Fish shell installation and configuration
- Modern CLI tools (ripgrep, fd, bat, starship, atuin, zoxide, mise, etc.)
- Development toolchains (Rust, Python, Node.js)
- Cross-platform deployment capabilities

## Architecture

### Configuration Structure
- `config.fish` - Main configuration file that initializes interactive sessions
- `conf.d/` - Configuration directory with modular setup files
  - `myabbrs.fish` - Custom command abbreviations (git, tmux, lsd, trash-cli, cross-platform clipboard)
  - `rustup.fish` - Rust toolchain configuration
  - `uv.env.fish` - UV Python package manager environment
  - `linux.fish` - Linux-specific paths and environment variables (Go, Java, Ansible, kubectl/krew)
  - `sway.fish` - Auto-start Sway window manager on TTY1 (Linux only)
- `functions/` - Custom Fish functions
  - `fish_user_key_bindings.fish` - FZF integration using modern `fzf --fish` syntax
  - `disable_laptop_keeb.fish` - Utility to disable laptop keyboard via xinput (Linux only)
  - `fisher.fish` - Fisher plugin manager
- `fish_variables` - Fish universal variables (colors, paths, editor settings)

### Tool Integration
The configuration integrates several modern CLI tools:
- **mise** - Runtime version manager (activated in config.fish:3)
- **starship** - Cross-shell prompt (config.fish:4)
- **atuin** - Shell history management (config.fish:5)
- **zoxide** - Smart directory navigation (config.fish:6)
- **fzf** - Fuzzy finder integration (functions/fish_user_key_bindings.fish:2)
- **fx** - JSON viewer with Fish completions (config.fish:8)

### Package Management
- Uses **Fisher** plugin manager (fish_plugins lists: jorgebucaran/fisher, edc/bass)
- Custom abbreviations for common tools (git, tmux, lsd, trash-cli via uvx)

## Development Workflow

### Testing Configuration Changes
```bash
# Reload Fish configuration
source ~/.config/fish/config.fish

# Test specific function
disable_laptop_keeb

# Check abbreviations
abbr -l
```

### Key Customizations
- Vi key bindings enabled (fish_variables:28)
- Editor set to nvim (fish_variables:3-4)
- Custom git log abbreviation `glop` for pretty formatted logs
- Trash CLI integration using uvx for safe file deletion
- FZF key bindings for enhanced file/history searching

### Important Paths
- User binaries: `~/.cargo/bin`, `~/.fzf/bin` (fish_variables:34)
- External environment: `~/.local/bin/env.fish` (sourced in config.fish:9)

## Cross-Platform Support

This configuration is designed to work on both macOS and Linux systems:

- **Clipboard operations**: Automatically uses `pbcopy` on macOS and `xclip` on Linux (via the `C` abbreviation)
- **Linux-specific features**: Only load on Linux systems (Sway auto-start, xinput keyboard disable, Linux paths)
- **Platform detection**: Uses `test (uname) = Linux` or `test (uname) = Darwin` for conditional loading

## Migration History

### November 2025 - Removed Nested Config Directory

**Issue**: A nested `fish/` directory existed within `~/.config/fish/` containing an older configuration that caused errors with deprecated FZF syntax (`fzf_key_bindings` using old `bind -k` syntax).

**Old nested config contained**:
- Deprecated `fzf_key_bindings` function with old bind syntax (line 214 of nested config.fish)
- Old-style bash/zsh-inspired git aliases (replaced by modern Fish abbreviations)
- Exa aliases (replaced by lsd abbreviations in myabbrs.fish)
- Linux-specific configurations without platform detection (hard-coded `/home/stonecharioteer/` paths)
- Fundle plugin manager (replaced by Fisher)
- Environment variables: `PYTHONDONTWRITEBYTECODE`, `JAVA_HOME`, `ANSIBLE_DEPRECATION_WARNINGS`, `ANSIBLE_NOCOWS`, `HISTCONTROL`

**Migration actions**:
1. Extracted useful Linux-specific configurations into `conf.d/linux.fish` with proper platform detection
2. Moved `disable_laptop_keeb.fish` function to main functions directory with Linux check
3. Created `conf.d/sway.fish` for Sway auto-start with platform detection
4. Removed entire nested `fish/` directory (was backed up to `fish.backup-20251125` during migration)
5. Current config now uses modern `fzf --fish | source` syntax in `fish_user_key_bindings.fish`

**Result**: Clean, cross-platform configuration that works on both macOS and Linux without errors.
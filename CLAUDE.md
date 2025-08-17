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
  - `myabbrs.fish` - Custom command abbreviations
  - `rustup.fish` - Rust toolchain configuration
  - `uv.env.fish` - UV Python package manager environment
- `functions/` - Custom Fish functions
  - `fish_user_key_bindings.fish` - FZF integration for key bindings
  - `disable_laptop_keeb.fish` - Utility to disable laptop keyboard via xinput
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
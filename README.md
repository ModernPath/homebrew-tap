# Homebrew Tap for ModernPath CLI

This is the official [Homebrew](https://brew.sh) tap for the ModernPath CLI.

## Installation

```bash
brew tap modernpath/tap
brew install modernpath
```

## Upgrade

```bash
brew upgrade modernpath
```

## Uninstall

```bash
brew uninstall modernpath
brew untap modernpath/tap
```

## What is ModernPath CLI?

ModernPath CLI connects your local development environment to the ModernPath platform for AI-powered codebase analysis, documentation, and work management.

**Features:**
- Initialize projects with architecture data from ModernPath platform
- Search documentation and code analysis offline
- Build context for AI-assisted development
- Review git changes against architecture documentation
- Manage epics, tasks, and specifications
- Launch AI coding agents with full context

## Quick Start

```bash
# Authenticate with ModernPath
modernpath auth

# Initialize in your project directory
modernpath init

# Search documentation
modernpath search "authentication"

# Ask questions about the codebase
modernpath ask "How does authentication work?"

# Review your git changes
modernpath review
```

## Documentation

For full documentation, see:
- [ModernPath CLI Documentation](https://docs.modernpath.ai/cli)
- [GitHub Repository](https://github.com/modernpath/cli)

## Issues

Report issues at [github.com/modernpath/cli/issues](https://github.com/modernpath/cli/issues).

# My nixvim config

## Features

### Copilot/LLM Integration

This configuration includes GitHub Copilot integration for AI-powered code completion and suggestions via `blink-cmp`.

#### Setup

To use GitHub Copilot, you need to:
1. Have a GitHub Copilot subscription
2. Authenticate with Copilot on first use by running `:Copilot auth` in Neovim

#### How It Works

- Copilot suggestions are automatically integrated into the completion popup via `blink-cmp`
- Copilot completions appear inline as you type with high priority
- Suggestions are shown in the completion menu and can be accepted using Tab/Enter (based on super-tab preset)
- The copilot-lua suggestion and panel modules are disabled to avoid conflicts with the completion engine

#### Keybindings

**Completion (Insert Mode):**
- `Tab` - Select next completion item or accept suggestion
- `Shift+Tab` - Select previous completion item
- `Ctrl+Space` - Manually trigger completion
- `Ctrl+e` - Close completion menu

Copilot suggestions appear automatically in the completion menu and can be accepted using the standard completion keybindings.


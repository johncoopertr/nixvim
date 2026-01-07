# My nixvim config

## Features

### Copilot/LLM Integration

This configuration includes GitHub Copilot integration for AI-powered code completion and suggestions.

#### Setup

To use GitHub Copilot, you need to:
1. Have a GitHub Copilot subscription
2. Authenticate with Copilot on first use by running `:Copilot auth` in Neovim

#### Keybindings

**Insert Mode (Suggestions):**
- `Alt+l` - Accept copilot suggestion
- `Alt+]` - Next suggestion
- `Alt+[` - Previous suggestion
- `Ctrl+]` - Dismiss suggestion

**Normal Mode:**
- `<leader>cp` - Open copilot panel (space + c + p)
- `<leader>cs` - Toggle auto-trigger for suggestions (space + c + s)

**Panel Navigation (when panel is open):**
- `Enter` - Accept selected suggestion
- `]]` - Jump to next suggestion
- `[[` - Jump to previous suggestion
- `gr` - Refresh suggestions

#### How It Works

- Copilot suggestions are automatically integrated into the completion popup via `blink-cmp`
- Suggestions appear as you type with high priority
- You can accept suggestions inline or open the panel for more options
- Auto-trigger is enabled by default but can be toggled with `<leader>cs`


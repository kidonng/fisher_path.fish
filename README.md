# 🎣 `$fisher_path`.fish

[Fish](https://fishshell.com/) plugin for automatically loading plugins under [`$fisher_path`](https://github.com/jorgebucaran/fisher/issues/640).

This plugin properly implements [conf.d loading](https://github.com/fish-shell/fish-shell/blob/da32b6c172dcfe54c9dc4f19e46f35680fc8a91a/share/config.fish#L257-L269), unlike the snippet provided in the original issue.

## Installation

```fish
# Save the script for auto loading
curl -sSL https://git.io/fisher_path.fish --create-dirs -o $__fish_config_dir/conf.d/fisher_path.fish

# Or append the script to your fish config
curl -sSL https://git.io/fisher_path.fish >> $__fish_config_dir/config.fish
```

## Note

- To stop loading plugins in new sessions, create a variable `$_fisher_path_initialized` via `set -U _fisher_path_initialized`. To revert, just erase it via `set -e _fisher_path_initialized`.

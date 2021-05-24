# `$fisher_path`.fish

[Fish](https://fishshell.com/) plugin for automatically loading plugins under [`$fisher_path`](https://github.com/jorgebucaran/fisher/issues/640).

## Installation

```fish
curl -sSL https://git.io/fisher_path.fish --create-dirs -o $__fish_config_dir/conf.d/fisher_path.fish
# or
curl -sSL https://git.io/fisher_path.fish >> $__fish_config_dir/config.fish
```

Alternatively, use [Fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install kidonng/fisher_path.fish
# Install `kidonng/fisher_path.fish@config` to save the following step
echo 'source $fisher_path/conf.d/fisher_path.fish' >> $__fish_config_dir/config.fish
```

## Note

- To stop loading plugins in new sessions, create a variable `$_fisher_path_initialized` via `set -U _fisher_path_initialized`. To revert, just erase it via `set -e _fisher_path_initialized`.
- `conf.d` scripts are only loaded in interactive mode, to reduce shell startup time. Please report an issue if any plugin obscurely	depends on them.

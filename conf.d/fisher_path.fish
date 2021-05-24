set -q _fisher_path_initialized && exit
set _fisher_path_initialized

if test -z "$fisher_path" || test "$fisher_path" = "$__fish_config_dir"
    exit
end

set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]
set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]

status -i || exit

for file in $fisher_path/conf.d/*.fish
    source $file
end

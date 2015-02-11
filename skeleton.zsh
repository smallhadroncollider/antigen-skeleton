skeleton() {
    dir="$HOME/.skeleton"
    cp -nr "$dir/$1/." .
}

# Auto complete code
_skeleton_get_command_list () {
    ls -1 "$HOME/.skeleton"
}

_skeleton () {
    compadd `_skeleton_get_command_list`
}

compdef _skeleton skeleton
show_git() { # save this module in a file with the name git.sh
  local index=$1 # this variable is used by the module loader in order to know the position of this module
  local icon="$(get_tmux_option "@catppuccin_git_icon" "󰜘")"
  local color="$(get_tmux_option "@catppuccin_git_color" "$thm_yellow")"
  local text="$(get_tmux_option "@catppuccin_git_text" "#(cd #{pane_current_path}; git rev-parse --show-toplevel | xargs basename) | #(cd #{pane_current_path}; git rev-parse --abbrev-ref HEAD) | #(cd #{pane_current_path}; git rev-parse --short HEAD)")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

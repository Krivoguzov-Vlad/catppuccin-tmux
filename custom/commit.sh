show_commit() { # save this module in a file with the name git.sh
  local index=$1 # this variable is used by the module loader in order to know the position of this module
  local icon="$(get_tmux_option "@catppuccin_commit_icon" "󰜘")"
  local color="$(get_tmux_option "@catppuccin_commit_color" "$thm_yellow")"
  local text="$(get_tmux_option "@catppuccin_commit_text" "#(cd #{pane_current_path}; git rev-parse --short HEAD)")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

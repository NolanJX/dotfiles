if status is-interactive
  set -x no_proxy 'localhost,127.0.0.1/8,::1'
  set -x NO_PROXY 'localhost,127.0.0.1/8,::1'

  abbr --add c clear

  # Git
  abbr --add g git
  abbr --add gst git status
  abbr --add gco git checkout
  abbr --add glt 'git log --pretty="format:%C(auto,yellow)%h %C(auto,cyan)%ai %C(auto,green)%ci %Creset%s"'

  # Lazygit
  # abbr --add lg lazygit
end


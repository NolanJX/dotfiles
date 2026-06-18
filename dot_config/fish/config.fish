if status is-interactive
  set -x no_proxy 'localhost,127.0.0.1/8,::1'
  set -x NO_PROXY 'localhost,127.0.0.1/8,::1'

  # Git
  abbr --add g git
  abbr --add gst git status
  abbr --add gco git checkout
end


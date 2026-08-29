function zcc
  set -x CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC 1
  set -x ANTHROPIC_BASE_URL 'https://api.z.ai/api/anthropic'
  set -x CLAUDE_CODE_AUTO_COMPACT_WINDOW '1000000'

  if string match -q "$HOME/projects/personal/*" $PWD
    set -x ANTHROPIC_AUTH_TOKEN ''

    set -x ANTHROPIC_DEFAULT_OPUS_MODEL 'glm-5.3[1m]'
    set -x ANTHROPIC_DEFAULT_SONNET_MODEL 'glm-5.3[1m]'
    set -x ANTHROPIC_DEFAULT_HAIKU_MODEL 'glm-5.3-flash[1m]'

    set -x ANTHROPIC_MODEL 'glm-5.3[1m]'
    set -x CLAUDE_CODE_SUBAGENT_MODEL 'glm-5.3[1m]'

    claude $argv
  end
end

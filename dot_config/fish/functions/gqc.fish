function gqc
  git clone --branch $argv[2] --single-branch --depth 1 $argv[1] $argv[3]
end

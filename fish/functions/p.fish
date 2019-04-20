function p
  if not set -q argv[1]
    cd ~/src
  else
    cd ~/src/$argv
  end
end

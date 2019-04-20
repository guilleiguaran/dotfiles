function _vim_helper
  set command $argv[1]
  set args $argv[2]

  if test (count $args) != 1
    $command -- $args
  else
    set components (string split ":" -- $args[1])
    set file $components[1]
    set line $components[2]

    if test -n "$line"
      $command +$line -- $file
    else
      $command -- $file
    end
  end
end

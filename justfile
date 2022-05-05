alias b := build
alias r := run
alias d := nuke

@_ensure-bin-dir:
  mkdir -p bin

@build target: _ensure-bin-dir
  echo 'Building {{target}}...'
  gcc {{invocation_directory()}}/{{target}}.c -o ./bin/{{target}} -Wall -Wpedantic
  echo 'Finished building {{target}}'

@clean target:
  rm -f ./bin/{{target}}

@nuke:
  rm -rf ./bin

@run target: (clean target) (build target)
  ./bin/{{target}}

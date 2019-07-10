#!/bin/bash

Source="${BASH_SOURCE[0]}"

Cwd="$(pwd)"

while [ -h "$Source" ]; do

  Dir="$(cd -P "$(dirname "$Source")" && pwd)"
  Source="$(readlink "$Source")"
  [[ $Source != /* ]] && Source="$Dir/$Source"
done
Dir="$(cd -P "$( dirname "$Source" )" && pwd)"

cd $Dir

gem build *.gemspec $*

cd $Cwd


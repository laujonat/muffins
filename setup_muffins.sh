#! /bin/bash

# Should notify you of any out of date gems when you setup or system errors
dir="$( dirname "$0" )"
ruby="$(which ruby || rbenv which ruby)"
"$ruby" "$dir/muffins.rb"
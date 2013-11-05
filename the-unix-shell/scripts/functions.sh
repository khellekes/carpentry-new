# These are functions that can be useful in more than one script.
# Include them by issuing:
#   source functions.bash

function my_absolute_dir {
  # See http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
  pushd `dirname $0` > /dev/null
  echo `pwd`
  popd > /dev/null
}

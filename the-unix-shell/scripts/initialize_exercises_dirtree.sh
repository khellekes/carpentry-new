#!/bin/bash
# An example call to this script is as follows:
#   "initialize_exercises_dirtree.sh santi"
# It will create some directories in ../exercises/santi

if [[ -z "$1" ]]
then
  echo "Please call this script with a parameter, as in:"
  echo "    $0 <name>"
  echo "where <name> is the name of the top level directory under ../exercises where you intend to work"
  exit 1
fi

# Where will we store our answers?
# Everything will be relative to where this script is...
pushd `dirname $0` > /dev/null
MY_DIR=`pwd`
popd > /dev/null
# ...so that we do not worry about the current working directory
EXERCISES_DIR="${MY_DIR}/../exercises/${1}"
echo "Creating many directories and files under:"
echo "   " `readlink -f "${EXERCISES_DIR}"`

# Create the exercises directory
mkdir -p "${EXERCISES_DIR}"

#---Create some interesting directories and files

mkdir -p "${EXERCISES_DIR}/corner-cases/-dir-starting-with-dash"
mkdir -p "${EXERCISES_DIR}/corner-cases/--dir-starting-with-doubledash"
mkdir -p "${EXERCISES_DIR}/corner-cases/--dir-starting-with-doubledash and with spaces"
mkdir -p "${EXERCISES_DIR}/corner-cases/.hidden-dir"

mkdir -p --mode=000 "${EXERCISES_DIR}/corner-cases/useless-dir"
mkdir -p --mode=300 "${EXERCISES_DIR}/corner-cases/unreadable-dir"
mkdir -p --mode=700 "${EXERCISES_DIR}/corner-cases/unreadable-dir/readable-dir"
echo "This is a secret message under a non-readable-non-writable directory subtree" > "${EXERCISES_DIR}/corner-cases/unreadable-dir/readable-dir/secret-message.txt"
chmod u-w "${EXERCISES_DIR}/corner-cases/unreadable-dir/readable-dir"

mkdir -p "${EXERCISES_DIR}/pdbs"
mkdir -p "${EXERCISES_DIR}/pdbs/gal4"
mkdir -p "${EXERCISES_DIR}/pdbs/gal80"
mkdir -p "${EXERCISES_DIR}/pdbs/uas"
mkdir -p "${EXERCISES_DIR}/pdbs/neurotransmitters"
mkdir -p "${EXERCISES_DIR}/pdbs/neuropeptides"
mkdir -p "${EXERCISES_DIR}/pdbs/luciferase"
mkdir -p "${EXERCISES_DIR}/pdbs/gfp"

cp -n "$MY_DIR/../command-table.org" "${EXERCISES_DIR}"

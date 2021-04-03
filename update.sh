#!/bin/sh

usage ()
{
 echo "$0

Do not use any arguments, please.
"
 exit 0
}

updater ()
{
 git submodule foreach 'git remote -v | grep "(fetch)"$ | sed "s/(.*)//" | grep -E "^origin|^upstream" | xargs -n 2 | grep /markdown.git ; [ $? = 0 ] && git fetch upstream'
 return $?
}


# Main script

[ "$*" ] && usage

updater
[ $? = 0 ] && echo "Updated /markdownpolaroid, and submodules"

# Exit status
exit 0

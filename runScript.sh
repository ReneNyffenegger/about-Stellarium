
if [ ! -e "$1" ]; then
  echo "specify script to be run"
  exit -1
fi

if [ ! -d ~/.stellarium/scripts ]; then
  echo "~/.stellarium/scripts does not exist"
  exit -1
fi

cp $1 ~/.stellarium/scripts

stellarium --startup-script=$(basename $1)

if test ! $(which spoof)
then
  if test $(which npm)
  then
    sudo npm install spoof -g
  fi
fi

if [ "$(uname -s)" = "Darwin" ]; then
  brew install n
  n 14
fi
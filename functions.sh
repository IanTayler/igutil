function workon()
{
  if [[ "$VIRTUALENV_HOME" ]]; then
    if [[ "$1" ]]; then
      source $VIRTUALENV_HOME/$1/bin/activate
    else
      ls $VIRTUALENV_HOME
    fi
  else
    echo 'Set variable \$VIRTUALENV_HOME to use workon.'
  fi
}

function newvenv()
{
  if [[ "$1" ]]; then
    if [[ "$VIRTUALENV_HOME" ]]; then
      $(cd $VIRTUALENV_HOME && python -m venv $1)
    else
      echo 'Set variable \$VIRTUALENV_HOME to use newvenv'
    fi
  else
    echo 'Needs an argument'
  fi
}

#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

URL_DAVIS_2017=https://github.com/davisvideochallenge/davis-2017.git
DIRECTORY_DAVIS="${DIR}/DAVIS17"

if [ ! -d "$DIRECTORY_DAVIS" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "${DIRECTORY_DAVIS} does not exist, create it now..."
  mkdir ${DIRECTORY_DAVIS}
  echo "Clone DAVIS17 repository"
  git clone ${URL_DAVIS_2017} ${DIRECTORY_DAVIS}
elif [ ! "$(ls -A ${DIRECTORY_DAVIS})"];then
  # If directory is empty, git clone the repository
  echo "${DIRECTORY_DAVIS} already exists, but is empty"
  echo "Clone DAVIS17 repository"
  git clone ${URL_DAVIS_2017} ${DIRECTORY_DAVIS}
else
  echo "${DIRECTORY_DAVIS} already exists, no need to download"
fi

cd "${DIR}/DAVIS17/data"
# Download Davis17 dataset
"./get_davis.sh"

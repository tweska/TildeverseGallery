#!/bin/bash

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd );

source ${DIR}/env/bin/activate

echo "Updating Tilde.Club Gallery!";
${DIR}/src/update club http://tilde.club ${DIR}/club ${DIR}/templates/club -u;

echo -e "\nUpdating Tilde.Town Gallery!";
${DIR}/src/update town http://tilde.town ${DIR}/town ${DIR}/templates/town -u;

echo -e "\nUpdating Tilde.Cafe Gallery!";
${DIR}/src/update cafe http://tilde.cafe ${DIR}/cafe ${DIR}/templates/cafe -us;

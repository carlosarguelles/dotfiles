#!/bin/sh

emoji=$(echo $1 | sed -n 's/.*\(:.*:\).*/\1/p')

scope=$2

if [ -z "$scope" ]; then
    git commit -m "$emoji"" $3"
else
    git commit -m $emoji" $scope: $3"
fi

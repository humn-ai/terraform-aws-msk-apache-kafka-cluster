#!/usr/bin/env bash
TAGBASE="aihumn/kafka-topics"

if [ "$1" != "" ]; then
    echo "Setting version $VERSION"
    TAGFULL="$TAGBASE:$1"    
    docker build -t $TAGFULL .
fi

TAGLATEST="$TAGBASE:latest"
docker build -t $TAGLATEST . --build-arg git_username=$git_username --build-arg git_password=$git_password
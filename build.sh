#!/bin/sh

for dir in */
do
    PL=${dir%/}
    DOCKERFILE=$dir"Dockerfile"
    [ -f $DOCKERFILE ] && {
        echo ========================================
        echo "building $PL dev container..."
        echo ========================================
        docker build -t $PL-dev $dir
    }
done

#!/usr/bin/env sh
VER=v2.21.0
DIR=~/Downloads
MIRROR=https://storage.googleapis.com/hephy-workflow-cli-release/${VER}

dl()
{
    OS=$1
    ARCH=$2
    PLATFORM=${OS}-${ARCH}
    FILE=deis-${VER}-${PLATFORM}
    URL=$MIRROR/$FILE
    LFILE=$DIR/$FILE

    if [ ! -e $LFILE ];
    then
        wget -q -O $LFILE $URL
    fi

    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $PLATFORM `sha256sum $LFILE | awk '{print $1}'`
}

printf "  %s:\n" $VER
dl darwin amd64
dl linux amd64

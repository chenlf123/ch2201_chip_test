#!/bin/sh
PWD=`pwd`

TOPDIR=$(cd `dirname $0`;pwd)

YOC_PATH=$TOPDIR/../../..

MK_GENERATED_PATH=$PWD/generated
MK_GENERATED_HEXS_PATH=$TOPDIR/generated/hexs
MK_GENERATED_IMGS_PATH=$TOPDIR/generated/imgs

echo "[INFO] Generated output files ..."

mkdir -p $MK_GENERATED_PATH
mkdir -p $MK_GENERATED_IMGS_PATH
mkdir -p $MK_GENERATED_HEXS_PATH

OBJCOPY=csky-abiv2-elf-objcopy
TARGETS_ROOT_PATH=$YOC_PATH/board/cb2201
BIN_NAME=

CONTENTS=Obj
#output yoc.bin
if [ -d $CONTENTS ];then
ELF_NAME=`ls Obj/*.elf`
else
ELF_NAME=`ls *.elf`
BIN_NAME=`ls *.elf | awk -F '.' '{print $1}'`
fi

$OBJCOPY -O binary $ELF_NAME $MK_GENERATED_IMGS_PATH/boot

#create mtb
sh $TOPDIR/mtbhex.sh $YOC_PATH $TARGETS_ROOT_PATH $TOPDIR

#bin to hex
sh $TOPDIR/img2hex.sh $YOC_PATH $TARGETS_ROOT_PATH $OBJCOPY $TOPDIR

cp -rf $MK_GENERATED_IMGS_PATH $MK_GENERATED_HEXS_PATH $MK_GENERATED_PATH

if [ -n "$BIN_NAME" ];then
mv $MK_GENERATED_PATH/imgs/boot $MK_GENERATED_PATH/imgs/$BIN_NAME.bin
mv $MK_GENERATED_PATH/hexs/boot.hex $MK_GENERATED_PATH/hexs/$BIN_NAME.hex
fi

rm -rf $MK_GENERATED_HEXS_PATH $MK_GENERATED_IMGS_PATH


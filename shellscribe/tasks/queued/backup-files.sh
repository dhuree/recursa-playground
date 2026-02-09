#!/bin/bash
# backup script

BACKUP_DIR=/tmp/backups
SRC=$1

if [ $SRC = "" ]; then
    echo "no source specified"
    exit
fi

mkdir $BACKUP_DIR
for f in `ls $SRC`; do
    cp $SRC/$f $BACKUP_DIR/$f
    echo "copied $f"
done

echo "backup complete, files in $BACKUP_DIR"
rm -rf $BACKUP_DIR/old_*

#!/bin/bash
TIME=$(date)
SRC_DIR=$1
DST_DIR=$2
CNTR=0
SRC_FULL_PATH=($1)
DST_FULL_PATH=($2)
touch syncer_log.log
echo "Starting copying data:" > syncer_log.log
echo "Time: '$TIME'" >> syncer_log.log
echo "From: '$SRC_FULL_PATH'" >> syncer_log.log
echo "To: '$DST_FULL_PATH'" >> syncer_log.log
echo "Scanning source folder..." >> syncer_log.log
SRC_FILES=$(ls $SRC_FULL_PATH|sort)
SRC_FILES_AMOUNT=$(ls $SRC_FULL_PATH|sort|wc -w)
echo "Files found: $SRC_FILES_AMOUNT" >> syncer_log.log
for FILE in $SRC_FILES
do
CNTR=$[$CNTR + 1]
echo "$CNTR. $FILE" >> syncer_log.log
done
unset FILE
CNTR=0
echo "Scanning destination folder..." >> syncer_log.log
DST_FILES=$(ls $DST_FULL_PATH|sort)
DST_FILES_AMOUNT=$(ls $DST_FULL_PATH|sort|wc -w)
echo "Files found: $DST_FILES_AMOUNT" >> syncer_log.log
for DFILE in $DST_FILES
do
CNTR=$[$CNTR + 1]
echo "$CNTR. $DFILE" >> syncer_log.log
done
unset DFILE
CNTR=0
echo "Scanning done." >> syncer_log.log
echo "Synchronization of content:" >> syncer_log.log
if [ -z "$DST_FILES" ];
then
echo "$SRC_FULL_PATH and $DST_FULL_PATH"
cp -r $SRC_FULL_PATH/. $DST_FULL_PATH
TIME=$(date)
echo "$TIME -----> $FILE was added to dest. dir." >> syncer_log.log
echo "$TIME -----> All files from source dir. was copied to dst.dir."
elif [ -n "$DST_FILES" ]
then
for FILE in $SRC_FILES
do
for DFILE in $DST_FILES
do
#echo "S:$FILE and D:$DFILE"
if [ "$DFILE" = "$FILE" ];
then
TIME=$(date)
cp -f $SRC_FULL_PATH/$FILE $DST_FULL_PATH/
echo "$TIME -----> $FILE is up to date." >> syncer_log.log
echo "$TIME -----> $FILE is up to date."
SRC_FILES=$(echo '$SRC_FILES' | sort | grep -v "$FILE")
NOT_EXIST=$((0))
break
elif [ "$DFILE" != "$FILE" ]
then
NOT_EXIST=$((1))
fi
done
if [ "$NOT_EXIST" == 1 ];
then
cp -f $SRC_FULL_PATH/$FILE $DST_FULL_PATH/
echo "$TIME -----> $FILE was added to dest. dir." >> syncer_log.log
echo "$TIME -----> $FILE was added to dest. dir."
SRC_FILES=$(echo '$SRC_FILES' | sort | grep -v "$FILE")
NOT_EXIST=$((0))
fi
done
fi
SRC_FILES=$(ls $SRC_FULL_PATH|sort)
DST_FILES=$(ls $DST_FULL_PATH|sort)
if [ -z "$SRC_FILES" ];
then
rm -f $DST_FULL_PATH/*
elif [ -n "$SRC_FILES" ];
then
for DFILE in $DST_FILES
do
for FILE in $SRC_FILES
do
EXIST=$((0))
if [ "$DFILE" == "$FILE" ];
then
EXIST=$((1))
break
elif [ "$DFILE" != "$FILE" ];
then
EXIST=$((0))
fi
done
if [ "$EXIST" == 0 ];
then
TIME=$(date)
rm -f $DST_FULL_PATH/$DFILE
echo "$TIME -----> $DFILE was removed from dest. dir." >> syncer_log.log
echo "$TIME -----> $DFILE was removed from dest. dir."
fi
done
fi
echo "Synchronization done." >> syncer_log.log

SOURCE_PATH="/Volumes/NO NAME/ate-midia" ;
TARGET_PATH="/Volumes/snk-hdd/Dropbox/Pictures/03travels/2016_ate-above-the-equator/00_ORIGINAIS_PENDRIVE" ; 
LOG_PATH="$TARGET_PATH/00__log.txt" ;
nohup cp -Rnvp "$SOURCE_PATH" "$TARGET_PATH" >> "$LOG_PATH"

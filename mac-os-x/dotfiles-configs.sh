# to change the default location  where screenshots will be saber.

defaults write com.apple.screencapture location $DROPBOXDIR/Screenshots; 
killall SystemUIServer;

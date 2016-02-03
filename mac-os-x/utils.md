## Find & Scan Wireless Networks

First, create a symbolic link to airport

```
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport
```

Then run it

```
airport -s
```

## Prevent Mac From Sleeping

To prevent sleeping for one hour.

```
caffeinate -u -t 3600
```

## Find files

```
locate something
```

## Quick Look From Terminal

```
qlmanage -p some-file.txt
```

## Get CPU Model

```
sysctl -n machdep.cpu.brand_string
```

## Text Util

Convert and show information of text files, look into it

```
textutil -info textFile
```

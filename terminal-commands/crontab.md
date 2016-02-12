# crontab

Cron is used run commands on schedule.



## install

```
sudo apt-get install gnome-schedule
```

## scheduling


```
crontab -e
```

When command need admistrative previleges run it with **sudo**

```
sudo crontab -e
```

## examples

### running each 10 minutes

```
*/10 * * * * /usr/bin/somedirectory/somecommand
```

### 04:01 AM every day

```
01 04 * * * /usr/bin/somedirectory/somecommand
```

### every monday of january plus january first

```
01 04 1 1 1 /usr/bin/somedirectory/somecommand
```

## work arounds or technical adaptations

List of things to check when kit is down.

1. status of related services
  * nginx
  * postgresql


### Postgres

* Check if some process is using the TCP 5432 port

```
lsof -i tcp:5432
```

* Check the `postgressql` service

```
service postgresql status
```

* Options to `service postgressql`

```
service postgressql start
service postgressql stop
service postgressql restart
service postgressql reload
service postgressql force-reload
service postgressql status
```


* Check the status of all services
```
service --status-all
```


```
```


```
```


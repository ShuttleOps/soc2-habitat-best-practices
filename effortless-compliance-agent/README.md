```
$ vagrant up
$ vagrant ssh
$ source /srv/results/last_build.env 
$ sudo hab pkg install /srv/results/$pkg_artifact
$ sudo hab svc load $pkg_ident
```
# effortless-compliance-agent

A [Chef Effortless](https://github.com/chef/effortless) package which contains and runs the [qualys Chef Infra Cookbook](./cookbooks/qualys).

## Testing in Vagrant

```
$ vagrant up
$ vagrant ssh
$ source /srv/results/last_build.env 
$ sudo hab pkg install /srv/results/$pkg_artifact
$ sudo mkdir -p /hab/user/effortless-compliance-agent/config/
$ sudo vi /hab/user/effortless-compliance-agent/config/user.toml
```

In the user.toml, set the attributes for the `effortless-compliance-agent` Cookbook:

(if your package is hosted remotely)

```
[attributes.qualys]
is_remote_pkg = true
pkg_remote_source = "https://qualys-bptests.s3.amazonaws.com/qualys-cloud-agent.x86_64.deb"
pkg_name = "qualys-cloud-agent.x86_64.deb"
activation_id = "[RETRIEVED FROM QUALYS CONSOLE]"
customer_id = "[RETRIEVED FROM QUALYS CONSOLE]"
```

You can also put a package in `agent_assets`, in that case you can use a non-remote configuration:

```
[attributes.qualys]
is_remote_pkg = false 
pkg_name = "qualys-cloud-agent.x86_64.deb"
activation_id = "[RETRIEVED FROM QUALYS CONSOLE]"
customer_id = "[RETRIEVED FROM QUALYS CONSOLE]"
```

Finally, load the service:

```
$ sudo hab svc load $pkg_ident
```

Once that is done, you can see the effortless package in action:

```
sudo journalctl -fu hab-sup
```

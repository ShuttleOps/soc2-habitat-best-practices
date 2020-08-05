# Qualys Cookbook

## Supported Distributions

- Ubuntu
- Debian
- Redhat 
- Centos 

(Tested on Centos7 and Ubuntu 18.04)

## Required Attributes:

- pkg_name: The Qualys package filename, as appearing in /opt/agent_assets or in pkg_remote_source
- activation_id: Qualys activation ID (retrieved from Qualys console)
- customer_id: Qualys customer ID (retrieved from Qualys console)

Additionally, if qualys.is_remote_pkg is true, then the following attribute is also required:

- pkg_remote_source: URI to package. File name should match pkg_name

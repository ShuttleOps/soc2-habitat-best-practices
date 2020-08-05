default['qualys']['assets_dir']             = "/opt/agent_assets"
default['qualys']['rpm_path']               = "#{node['qualys']['assets_dir']}/qualys-cloud-agent.x86_64.rpm"
# set the following after visiting the Qualys dashboard
#default['qualys']['activation_id']         = ""
#default['qualys']['customer_id']           = ""
#default['qualys']['is_remote_rpm']         = false # if true, set the following variable to a real URI
# programmatic downloads of the Qualys rpm package are typically not possible due to it only being available from the web console
# hence why this cookbook relies on an asset being pre-populated on the node or alternatively populating the following variable
# to point to an artifact store or an s3 bucket.
#default['qualys']['rpm_remote_source']      = "https://example-artifact-store.com/qualys-cloud-agent.x86_64.rpm"


pkg_name=effortless-compliance-agent
pkg_origin=shuttleops-tutorials
pkg_version="0.1.0"
pkg_maintainer="ShuttleOps <support@shuttleops.io>"
pkg_license=("Apache-2.0")
pkg_upstream_url="http://chef.io"
pkg_scaffolding="chef/scaffolding-chef-infra"
pkg_svc_user=("root")
pkg_deps=(
    core/rpm
    core/dpkg
)
scaffold_policy_name="base"

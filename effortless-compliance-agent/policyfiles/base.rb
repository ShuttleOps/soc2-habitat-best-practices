# base.rb - Describe how you want Chef Infra to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

name "base"

# Where to find external cookbooks
default_source :supermarket
default_source :chef_repo, "../" do |s|
  s.preferred_for "qualys"
end

# run_list: run these recipes in the order specified.
run_list [
             "qualys::default"
         ]

# attributes: set attributes from your cookbooks
default['qualys'] = {}

# SOC2 Best Practices with Chef Habitat and ShuttleOps

This repository contains examples which aim to aid organizations with best practices relating to passing security audits - in particular SOC2 - when using Chef Habitat in the context of ShuttleOps.

For more information visit [shuttleops.io](shuttleops.io).

## Table of Contents

- [effortless-compliance-agent](./effortless-compliance-agent): A [Chef Effortless](https://github.com/chef/effortless) package which installs and runs the Qualys compliance agent.

## Using this Repository

Each repository contains a Chef Habitat package which can be built and deployed by ShuttleOps. To do this, fork this repository and [create a Build Pipeline](https://help.shuttleops.io/support/solutions/articles/44001932747-create-a-build-pipeline) using ShuttleOps. Then, [create a Deployment Pipeline](https://help.shuttleops.io/support/solutions/articles/44001932779-create-a-deployment-pipeline) corresponding to the artifact created by the Build Pipeline.

There is also a Vagrantfile at the root level of this repository which reproduces the Deployment Targets used by ShuttleOps.

## Requesting Support

Feel free to reach out to support@shuttleops.io

## Credits

ShuttleOps Inc. 2020

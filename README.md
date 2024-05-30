[![build](https://github.com/opspec-pkgs/gcp.container.clusters.get-credentials/actions/workflows/build.yml/badge.svg)](https://github.com/opspec-pkgs/gcp.container.clusters.get-credentials/actions/workflows/build.yml)


<img src="icon.svg" alt="icon" height="100px">

# Problem statement

gets a kubeconfig for a kubernetes cluster in google kubernetes engine service
> note: auth in the returned file will be valid for 1hr


# Example usage

## Visualize

```shell
opctl ui github.com/opspec-pkgs/gcp.container.clusters.get-credentials#1.3.0
```

## Run

```
opctl run github.com/opspec-pkgs/gcp.container.clusters.get-credentials#1.3.0
```

## Compose

```yaml
op:
  ref: github.com/opspec-pkgs/gcp.container.clusters.get-credentials#1.3.0
  inputs:
    clusterName:  # 👈 required; provide a value
    keyFile:  # 👈 required; provide a value
    projectId:  # 👈 required; provide a value
  ## uncomment to override defaults
  #   internalIp: false
  #   region: " "
  #   zone: " "
  outputs:
    kubeConfig:
```

# Support

join us on
[![Slack](https://img.shields.io/badge/slack-opctl-E01563.svg)](https://join.slack.com/t/opctl/shared_invite/zt-51zodvjn-Ul_UXfkhqYLWZPQTvNPp5w)
or
[open an issue](https://github.com/opspec-pkgs/gcp.container.clusters.get-credentials/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see
[project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/main/CONTRIBUTING.md)

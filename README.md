# tofu-docker

[OpenTofu](https://opentofu.org) container images, rebuilt daily and published to GHCR and Docker Hub.

```sh
docker run --rm -v "$PWD:/workspace" ghcr.io/elivlo/opentofu:latest version
docker run --rm -v "$PWD:/workspace" elivlo/opentofu:latest version
```

## Image

Alpine plus `git`, `ca-certificates` and `openssh-client`, with the `tofu` binary copied from the official `ghcr.io/opentofu/opentofu:<version>-minimal` image. Platforms: `linux/amd64`, `linux/arm64`. Entrypoint is `tofu`.

## Tags

The three latest OpenTofu minor lines are built. For each: `X.Y.Z` and `X.Y`. The newest also gets `latest`. A daily workflow rebuilds all of them, which picks up new patch releases and Alpine updates.

## Setup

Add these repository secrets: `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` (a Docker Hub access token with write scope). GHCR uses the built-in `GITHUB_TOKEN`. After the first push, set the GHCR package visibility to public.

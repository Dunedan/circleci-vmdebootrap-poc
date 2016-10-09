[![CircleCI](https://circleci.com/gh/Dunedan/circleci-vmdebootrap-poc.svg?style=svg)](https://circleci.com/gh/Dunedan/circleci-vmdebootrap-poc)

This repositoriy contains a proof of concept if it's possible to use
[CircleCI](https://circleci.com/) to build Debian images using `vmdebootstrap`.

As of now it doesn't work, because `vmdebootstrap` tries to create device nodes
via `mknod` through `kpartx`, which isn't permitted in the CircleCI build
environment.
While replacing that code, so it uses loop devices would be possible, the
`loop` kernel driver isn't available there either.

Beside this essential problem the partitioning of the created disk image is
already pretty slow and takes several minutes, which would be at least a minor
annoyance.

If somebody stumbles over this and finds a way to get it working it'd
appreciate a comment via an issue or pull request.

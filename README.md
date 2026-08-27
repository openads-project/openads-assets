# openads-assets


<p align="center">
  <a href="https://openads-project.github.io"><img src="https://img.shields.io/badge/OpenADS-45ccc6"/></a>
  <a href="https://github.com/openads-project/openads-assets/releases/latest"><img src="https://img.shields.io/github/v/release/openads-project/openads-assets"/></a>
  <a href="https://github.com/openads-project/openads-assets/blob/main/LICENSE"><img src="https://img.shields.io/github/license/openads-project/openads-assets"/></a>
  <a href="https://github.com/openads-project/openads-assets/actions/workflows/data-image.yml"><img src="https://github.com/openads-project/openads-assets/actions/workflows/data-image.yml/badge.svg"/></a>
</p>

This repository provides shared data assets for
[***OpenADS***](https://openads-project.github.io/), the *Open Automated Driving
Systems* project.

> [!IMPORTANT]
> This repository is part of [***OpenADS***](https://openads-project.github.io/), the *Open Automated Driving Systems* project. *OpenADS* and its modules have been initiated and are currently being maintained by the [**Institute for Automotive Engineering (ika) at RWTH Aachen University**](https://www.ika.rwth-aachen.de/de/).


## Contents

- [`mesh/`](mesh) contains 3D meshes, materials, and textures.
- [`urdf/`](urdf) contains URDF robot descriptions.

## Usage

Build the data image from the repository root:

```bash
ASSETS_VERSION=v1.0.0
ASSETS_IMAGE="ghcr.io/openads-project/openads-assets:${ASSETS_VERSION}"

docker build \
  --build-arg IMAGE_VERSION="${ASSETS_VERSION}" \
  --tag "${ASSETS_IMAGE}" \
  .
```

The image stores the data at `/mesh` and `/urdf`. Additional top-level data
directories are copied to matching paths in the image.

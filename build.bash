#!/bin/bash

# Check if podman is installed.
if ! command -v podman &> /dev/null
then
    echo 'podman is required to run this script. Exiting...'
    exit 1
fi

# Remopve the "build" directory to start fresh. Probably we could rebuild on
# it again and again, but...
if [ -d "build" ]
then
    echo 'Removing the previous "build" directory to start fresh'
    rm --force --recursive build
fi

# Create our build directory.
mkdir "build"

# The container name and the image name will match in this case, for our
# convenience.
readonly container_name="clepsydra-build"
readonly image_name="localhost/${container-name}"

# Build the image if it doesn't exist.
if ! podman image exists "${image_name}"
then
    podman build --tag "${image-name}" --file "container/Containerfile"
fi

# Build the PDF.
podman run \
    --name "${container_name}" \
    --rm \
    --volume "$(pwd)":/home/user \
    "${image_name}" \
    bash container/container-input.bash

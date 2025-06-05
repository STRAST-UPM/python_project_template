#!/bin/bash

full_path_to_script="$(realpath "${BASH_SOURCE[0]}")"
script_parent_folder="$(dirname "$full_path_to_script")"

image_name="strast-upm/python_project_template"
tag="latest"
# image_repository="docker.io"
image_repository="ghcr.io"

sudo docker build --no-cache -t "$image_name":"$tag" "$script_parent_folder"

sudo docker tag "$image_name" "$image_repository/$image_name:$tag"
sudo docker push "$image_repository/$image_name:$tag"

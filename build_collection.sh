#!/usr/bin/env bash

sed -i "s/\$TAG_RELEASE/${GITHUB_REF##*/}/g" galaxy.yml

ansible-galaxy collection build --output-path ./releases

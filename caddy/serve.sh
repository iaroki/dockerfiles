#!/bin/bash

sudo podman run --rm -v $PWD:/var/www -p 8080:8080 iaroki/caddy

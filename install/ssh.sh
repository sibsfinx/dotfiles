#!/usr/bin/env bash

ssh-add
eval $(ssh-agent)
ssh -T git@github.com
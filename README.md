# Introduction

This repository contains utility container images for CICD purposes.

# Salient Points

1. Baseline Image will be Ubuntu Jammy
    * Alpine may be a future road map item
1. All branches must follow /feat/dock/<image-name>
    * Will need to setup CI checks at some point
1. This utility images should help to save time in github actions workflows

# Image Library

1. [Azure Cli based on Ubuntu](azure/linux/azure-cli/Dockerfile)

```
This is not based off the Microsoft Official Image which you can learn about more [here](https://learn.microsoft.com/en-us/cli/azure/run-azure-cli-docker).

```

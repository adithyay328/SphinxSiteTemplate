# SphinxSiteTemplate
This repository contians template code for Sphinx, along with a Docker file for building across platforms. As well, it contains Terraform code to provision the infrastructure for the site, and scripts to build + push new versions of the site to the provisioned infrastructure.

## Configuring development environment
### Overview
To ensure a consistent development for this site without forcing everyone to use Linux, this repository uses Docker to create a homogenous development environment for all contributors, allowing for easy synchronization of build dependencies and LaTeX configuration, across macOS, Linux and Windows.

### Configuring your environment
To configure your environment, you will need to follow these steps:

1. Install Docker Desktop. Instructions for your OS can be found here: https://www.docker.com/products/docker-desktop/.
2. Make sure that the directory where this is located is in the allowed places to mount from. Instructions for this vary, so Google how to do it for your platform
3. Run the DockerRun shell command appropriate for your OS. This will fire up a background task that listens for changes, and updates the build directory as you make changes.
4. To view the website, simply open up the index.html file in your site/build directory. All the links should be working from there.
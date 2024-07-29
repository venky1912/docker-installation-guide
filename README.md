
 # Docker Installation Guide To Install a Docker on various Distributed systems in Different ways to utilise as a Contianerizaton for your container Deployment.

This repository contains guides for installing Docker on various operating systems.

## Available Guides for each step to implement on Porjects

- git clone https://github.com/venky1912/docker-installation-guide.git
- cd docker-installation-guide

## Docker Installation with manual Steps under guide_docs for each distributed Systems.


- [Linux](guide_docs/linux.md)
- [Windows](guide_docs/windows.md)
- [Mac](guide_docs/mac.md)


## Docker Installation with Shell script and Powershell for Windows

## Linux Distributed systems 
- cd docker_shscripts 
- make it executable permissions for each sricpt


    ```sh
    chmod +x install_docker_ubuntu_debian.sh
    ./install_docker_ubuntu_debian.sh
    ```

    ```sh
    chmod +x install_docker_centos_fedora.sh
    ./install_docker_centos_fedora.sh
    ```

    ```sh
    chmod +x install_docker_mac.sh
    ./install_docker_mac.sh
    ```

    ```sh
    ./install_docker_windows.ps1
    ```

    ```sh
    chmod +x install_docker_redhat.sh
    ./install_docker_redhat.sh
    ```

    ```sh
    chmod +x install_docker_amazon_linux.sh
    ./install_docker_amazon_linux.sh
    ```

## Docker Installation with ansible role where we use Configuration Deployment in various Distributed Systems Automation Process.

# Ansible Role: Docker Install

This Ansible role installs Docker on various operating systems.

## Supported OS

- Ubuntu/Debian
- CentOS/Fedora/Red Hat
- Amazon Linux
- Windows
- MacOS

## Requirements

- you need to install ansible on your deployment machine

## Role Variables

None.

## Dependencies

None.

## Example Playbook

    ```sh
    cat docker_playbook.yml
    ansible-playbook -i docker_inventory_file docker_playbook.yml
    ```


###  Create an Ansible Playbook to Test the Role then Run the Playbook

Create a playbook to test your role:

```yaml
---
- name: Install Docker
  hosts: all
  become: yes
  roles:
    - ansible-docker-role


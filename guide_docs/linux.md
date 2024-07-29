# Docker Installation Guide for Linux

## Supported Distributions
- Ubuntu
- Debian
- CentOS/RedHat/Amazon Linux
- Fedora

### Ubuntu and Debian

1. **Update your existing list of packages**:
    ```sh
    sudo apt update -y
    ```

2. **Install the required packages**:
    ```sh
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    ```

3. **Add Docker’s official GPG key**:
    ```sh
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    ```

4. **Add the Docker APT repository**:
    ```sh
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    ```

5. **Update your package database**:
    ```sh
    sudo apt update
    ```

6. **Install Docker**:
    ```sh
    sudo apt install docker-ce
    ```

7. **Start and enable Docker**:
    ```sh
    sudo systemctl start docker
    sudo systemctl enable docker
    ```

### CentOS and Fedora

1. **Update your existing list of packages**:
    ```sh
    sudo yum update
    ```

2. **Install required packages**:
    ```sh
    sudo yum install -y yum-utils device-mapper-persistent-data lvm2
    ```

3. **Add the Docker repository**:
    ```sh
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    ```

4. **Install Docker**:
    ```sh
    sudo yum install docker-ce
    ```

5. **Start and enable Docker**:
    ```sh
    sudo systemctl start docker
    sudo systemctl enable docker
    ```

## Verify Installation
```sh
docker --version

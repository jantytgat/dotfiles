# dotfiles
## Introduction

This repository contains all settings as I would deploy a new macOS machine, whether it is new device or a virtual machine.

Through a couple of roles, general purpose applications are installed as well as a couple of development tools to get work done.

**Note: this is tailored to my needs, so take when you blindly copy everything in here. Enable/Disable tasks or roles at your discretion.**

**Note: this is still a work in progress as my requirements might change**

The goal is to adapt this repository for my Linux VM's as well, so I have a universal toolset at my disposal regardless of the operating system I'm using.

## Getting started
### macos
#### Prerequisites
1. Make sure you are signed in to your Apple account, so applications from the App Store are automatically installed.
2. Install Homebrew on the target system.

    This will also install the necessary xcode packages (like git, make).

    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```
3. Install Ansible using brew:
    ```
    brew install ansible
    ```

#### Bootstrap
1. Clone this repository into your home folder:

    ```
    cd ~
    git clone https://github.com/jantytgat/dotfiles.git
    ```


2. Finally, run the Makefile:
    ```
    cd ~/dotfiles
    make macos
    ```

**NOTE: this will take while as all applications are downloaded from either the App Store or Brew**

## Updating

You can always fetch new changes by running ```git pull``` in ```~/dotfiles```, after which you can run the ```make macos``` command again.

Alternatively, you can run the ansible-playbook command yourself:

```ansible-playbook -i ansible/inventory -K ansible/macos.yaml```
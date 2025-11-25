# OEL9 Host for Oracle Database
Vagrant build for Oracle Single Instance Database on OEL9, deployed on filesystem

## Required 
 * [Download and install Vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)
 * [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Usage
1. Download the [Vagranfile](Vagrantfile)
1. Run `vagrant up` command 

## Directory Structure
```plaintext
├── /u01             # Oracle software binaries and installation files
├── /oraredo         # Online redo log files (for transaction recovery)
├── /orabackup       # Database backup files (RMAN/expdp dumps, etc.)
├── /oradata         # Datafiles storing actual database tables, indexes, and objects
└── /vagrant_share   # Synced folder mapping the host's Downloads directory to the VM
```
 
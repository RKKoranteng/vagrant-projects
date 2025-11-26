# Single Instance (SI) Build

Vagrant scripts to build a OEL9 host inteneted for Oracle Single Instance deployed on file system.  

**Directory Structure**
```plaintext
├── /u01             # Oracle software binaries and installation files
├── /oraredo         # Online redo log files (for transaction recovery)
├── /orabackup       # Database backup files (RMAN/expdp dumps, etc.)
├── /oradata         # Datafiles storing actual database tables, indexes, and objects
└── /vagrant_share   # Synced folder mapping the host's Downloads directory to the VM
```

**Required**
 * [Download and install Vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)
 * [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Usage
1. Download the [Vagranfile](Vagrantfile)
1. Run `vagrant up` command 


 
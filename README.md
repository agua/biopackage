README

# biopackage

## 0. SUMMARY

Biopackage is used by the open-source package installer Biorepo to automatically install Linux-supported packages as a non-root user. Biorepo can also install workflows that can be run on Agua, an open-source workflow platform that supports local, HPC and cloud workflows.

## 1. INTRODUCTION

The Biopackage repository is used by package installer Biorepo (www.github.com/agua/biorepo) to automatically install packages and workflows. Biopackage is a collection of application-specific installation scripts that Biorepo uses to carry out installations and test the correct functioning of the installed packages. Installed executables can be run on the Linux command line or using the open-source workflow platform Agua (www.github.com/agua/agua).

If you don't find the package you need in Biopackage, you can submit a feature request to:

aguadev@gmail.com

## 2. INSTALLATION

### Hardware requirements

Memory   512MB RAM
Storage  230 MB

Please note that you may need several GBs of storage to house the application files you install using the biorepo. 

Note: To determine how much disk space you have, use the 'df -ah' command.

### Operating system

Biorepo supports the following operating systems:

Ubuntu 16.04
Centos 7.3

It should also run on other Debian or RHEL/Fedora/CentOS systems.

## Software dependencies

Required software packages: 

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git  
Git 1.6+  

http://perl.org  
Perl 5.10+  

You can verify the installed versions of these packages:

```bash
perl --version
git --version
```
To install these packages on Ubuntu/Debian:

```bash
sudo apt-get install -y git
sudo apt-get install -y cpanminus
```
To install them on RHEL/Fedora/CentOS:

```bash
sudo yum install perl
sudo yum install git
```
## Alternative A: Install with Biorepo 

The standard way to install Biopackage is by installing Biorepo, which installs Biopackage by default:

```bash
git clone https://github.com/agua/biorepo
cd biorepo
./install.sh
```

This will download and configure Biorepo, including downloading the biopackage repository to Biorepo's base directory. 

Biorepo supports the following subcommands:

```bash
biorepo list                     # List all available and installed packages
biorepo status                   # List all installed packages
biorepo update                   # Update Biorepo
biorepo install <PACKAGE>        # Install package <PACKAGE>
biorepo install <PACKAGE> -v 1.0 # Install package <PACKAGE>, version 1.0
biorepo --help                   # Print usage information
```

The following options are supported:

--version 

For more details, see:

https://github.com/agua/biorepo

### Alternative B: Install in isolation

If you simply wish to review the Biopackage installation scripts:

```bash
git clone https://github.com/agua/biopackage
cd biopackage
```

## 3. HOW IT WORKS

Each package folder in Biopackage contains a namesake .ops YAML-format file which defines the installation procedure for the package, e.g.:

circos/circos.ops 

### Default install

Biorepo first reads the .ops file and by then, by default, executes its own 'doInstall' function which uses specific field values of the .ops file to guide the installation procedure. 

Default package installation involves the following steps:

- Install dependencies
- Download the package from a remote URL to folder INSTALLDIR/PACKAGE
- Install the package to location INSTALLDIR/PACKAGE/VERSION

The INSTALLDIR/PACKAGE/VERSION values are defined in the Biorepo configuration file:

biorepo/conf/config.yml
 
... and by user inputs as follows:

INSTALLDIR (required) : The base installation directory defined by the 'installdir' field in the Biorepo configuration file  
PACKAGE (required)    : The user-provided package name in install command  
VERSION (optional)    : The package '--version' argument in the install  command (DEFAULT: 'version' field in Biorepo configuration file or the latest tag if 'version' is missing and the URL is a Git repository)  


### Custom install with SDK

For custom installs, a .pm file is also present in the package directory, e.g.:

circos/circos.pm

Instead of calling its own 'doInstall' method, Biorepo will load the circos.pm file dynamically and call its 'doInstall' method. The circos.pm file will have full access to Biorepo's API methods (see below).

### Custom install without SDK

If the .ops file contains a valid "script" field, instead of calling its 'doInstall' method, Biorepo will execute the field value as a system command with the location of the .ops file as the sole argument. E.g., add this line to circos/circos.ops:

    script: "python installer.py" 

... to run the following install command:

```bash
python installer.py circos/circos.ops
```

### Open Package Schema (.ops)

The .ops suffix stands for '*Open Package Schema*', which defines a standard way for describing the installation process of a package. The required and optional fields for .ops files are as follows:

dependencies     : List of hashes containing "package" and "version" keypairs
url: remote location of downloaded file
installtype      : A comma-separated string with format

    <(download|zip|git)>[,config|make|perlmake|install|confirm]

... where '<\*> arguments are required, '|' are alternatives and '[\*]' arguments are optional and the supported arguments are:

    + download   : Download file defined by the "url" field
    + zip        : Download from "url" and unzip tgz|tar.gz|bz2|zip file 
    + git        : Clone "url" using Git and optionally checkout user-specified version (DEFAULT: checkout latest tag)
    + configure  : Run '/.configure --prefix=<INSTALLDIR>/<PACKAGE>/<VERSION>' 
    + make       : Run 'make' and 'make install' 
    + perlmake   : Run 'perl Makefile.PL'
    + confirm    : Run 'perl t/test.t' to test the installation

*Example .ops file entries:*

Download a zipfile, then run ./configure, 'make' and 'make install':  

    installtype: "zip,configure,make"

Download version '1.0.0' from a remote Git repo:  

    version: "1.0.0"
    installtype: "git"

## 4. HOW TO ADD YOUR OWN PACKAGES

You can use Biorepository to automate the installation of your own package or a third party package. You can use any software programming language to write your installation script; Biorepo will run your installation and test scripts, report the outcome (success|error) and store your installation information. You may prefer to create a *.pm Perl file to leverage Biorepo's Perl SDK (see Custom install with SDK above).

The basic development process is as follows:

### Install Biopackage with Biorepo

Create a new directory with the same name as the package you want to install, e.g.:

```bash
mkdir myapp
cd myapp
```
### Create .ops file

Create a skeleton .ops file with optional '--version' (DEFAULT: 0.0.1) and edit as desired:

```bash
biorepo skel myapp --version 1.0 
emacs -nw myapp.ops
```

### Private repos

By default, installed packages are public on Github. To install from a private repository, add the following lines to the .ops file:

    privacy: private
    login: <GITHUB_USERNAME>

And also ensure that your GitHub-registered SSH private key is accessible and has the correct permissions, e.g.:

chmod 400 ~/.ssh/id_rsa

### Create installer

Create file myapp.pm with an editor:

```bash
emacs -nw myapp.pm
```

Alternately, create your own 
Create a test file:

mkdir t
emacs -nw t/test.t

You can then use Biorepo to install your package:

biorepo install myapp

## 4. HOW TO CONTRIBUTE

All contributions to Biopackage will be acknowledge in the README.md file. You can contribute your custom installation scripts to Biopackage as follows:

### Fork the repo

Create your own fork of Biopackage on Github:

https://github.com/agua/biopackage

### Create your installer

Create a custom install (with or without SDK) for your package or a third party package, including tests. Push your code to your forked copy of Biopackage.

### Submit pull request

Ensure that all tests pass before sending a pull request on GitHub.







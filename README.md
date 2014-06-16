UbuntuDockerInstaller
=====================

IaaS provisioning script for installing Docker on Ubuntu 14.04 Trusty (LTS) during post creation phase of a new cloud instance.

### Concept
Ubuntu Trusty comes with a 3.13.0 Linux kernel, and a docker.io package which installs all its prerequisites from Ubuntu's repository. This package is not pre-installed with a fresh install of the OS. 

If you wish to make use of the new Ubuntu support for Docker containers on your favorite Cloud Platform, you will need to manually install Docker after yoir cloud VM instance has been created.

One way to automatically preload your new VM with the latest Docker version supported by Ubuntu is to leverage your cloud platform's support for provisioning scripts.

This git repo provides a basic bash script for the installation of Docker on Ubuntu 14.04 instances.

### Usage Prep

Copy the RAW URL for the udi.sh file to your clipboard: https://raw.githubusercontent.com/vinomaster/UbuntuDockerInstaller/master/udi.sh

### SoftLayer Setup

#### Account Setup

Before we can use a provisioing script we must add it to your SoftLayer Account. There is a 20 char max length on the name of provisioning scripts in Softlayer. We will use name = "UbuntuDockerInstall".

1. Select **Provisioning Scripts** from your SoftLayer Portal under **Software**
2. Click the **Add Provisioning Script** link.
3. In teh **Script name** field type: UbuntuDockerInstall
4. In the **URL** field paste the content of your clipboard (RAW URL for udi.sh).
5. Click the **Create** button.

#### Instance Creation

1. Select **Order Virtual Server (Monthly | Hourly)** from your SoftLayer Portal under **Virtual Computing**
2. Configure your Cloud Server making sure you select one of the supported Ubuntu 14.04 base images
3. Click **Continue Your Order** Button
4. On teh **Order Summary and Billing** page, select the UbuntuDockerInstall Provision Script in the dropdown.
5. Complete the form and submit your order.

### AWS Setup

### References

* [Softlayer Provisioning Scripts](http://bodenr.blogspot.com/2014/04/giving-your-softlayer-servers.html)

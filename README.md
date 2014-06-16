UbuntuDockerInstaller
=====================

IaaS provisioning script for installing Docker on Ubuntu 14.04 Trusty (LTS) during post creation phase of a new cloud instance.

### Concept
Ubuntu Trusty comes with a 3.13.0 Linux kernel, and a docker.io package which installs all its prerequisites from Ubuntu's repository. This package is not pre-installed with a fresh install of the OS. 

If you wish to make use of the new Ubuntu support for Docker containers on your favorite Cloud Platform, you will need to manually install Docker after yoir cloud VM instance has been created.

One way to automatically preload your new VM with the latest Docker version supported by Ubuntu is to leverage your cloud platform's support for provisioning scripts.

This git repo provides a basic bash script for the installation of Docker on Ubuntu 14.04 instances.

### SoftLayer

#### Account Setup

Copy the RAW URL for the udi.sh file to your clipboard: https://raw.githubusercontent.com/vinomaster/UbuntuDockerInstaller/master/udi.sh

Note: SoftLayer allows you to use a URL to access the. 

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

### AWS

Copy the contents of the udi.sh file to your clipboard: https://raw.githubusercontent.com/vinomaster/UbuntuDockerInstaller/master/udi.sh

Note: You must cut/paste the entire script text into the form. 

1. Log into your EC2 Dashboard
2. In the **Instances** panel, click on the **Launch Instance** button.
3. Fill out your form details. 
4. In **Step 3** under **Advanced Details** click on the **As text** radio button and copy the contnet of the udi.sh file into the text box.
5. Complete and submit the form.

### References

* [Softlayer Provisioning Scripts](http://bodenr.blogspot.com/2014/04/giving-your-softlayer-servers.html)

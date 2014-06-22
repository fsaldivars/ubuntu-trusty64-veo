# Ubuntu 14.04 LTS/LAMP

A custom Ubuntu 14.04 LTS box running a developer LAMP stack for [VEO](http://veo.tv).

## System requirements
Mac OS X or Linux capable of running VirtualBox. Windows hasn't been certified as a proper host environment for this cookbook. At least 4GB of available memory. Ruby 1.9.3 or higher. Git 1.7.1 or higher.

### Installation steps
Download this codebase inside of your `veo.tv` working copy:

    git clone https://github.com/rudisimo/vagrant-ubuntu-trusty64-veo vagrant; cd vagrant

Make sure that the following lines are inside of your system's `hosts` file.

	10.10.10.101 local.veo.tv
	10.10.10.101 local.cablevision.veo.tv
	10.10.10.101 local.cablemas.veo.tv
	10.10.10.101 local.bluetogo.mx

Create the VM by running:

    vagrant up

Finally, visit [http://local.veo.tv](http://local.veo.tv) in your browser.

### Vagrant tips
Once the provisioning step is completed, you can login into the VM via SSH:

    $ vagrant ssh

If provisioning fails for any reason, you can pick up where it left off by running it again until it succeeds:

    $ vagrant provision

When you're not logged into the VM via SSH, it will still keep running, you can either stop it or destroy it to clean it up (note that destroying is perfectly OK, because your project files are not stored in the VM itself).

To delete your local VM:

    $ vagrant destroy -f

To stop it (can be started later again with `vagrant up`):

    $ vagrant halt

If you only want to run a single command within the VM, you can use:

    $ vagrant ssh -- [command]

For instance:

    $ vagrant ssh -- uptime

Read the official [documentation](http://docs.vagrantup.com/v2/cli/index.html) to learn more about Vagrant commands.

## Author

[Rodolo Puig](https://twitter.com/rudisimo)
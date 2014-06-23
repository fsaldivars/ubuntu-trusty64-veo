# Ubuntu 14.04 LTS/LAMP

A custom Ubuntu 14.04 LTS box running a developer LAMP stack for [VEO](http://veo.tv).

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
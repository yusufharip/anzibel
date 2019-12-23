# Information

## Topology and Server Specification
Topology will appear here
![GitHub Logo](/images/topology.png)

## Local Development
I use vagrant to develop on local machine<br />
You can view Vagrantfile for machine configuration

## Production
DigitalOcean

## Configuration Process
1. Configure **instance-a**
    * Register ssh-key jenkins and root in machine to github (manual).
    * Run *instance-a.sh* for initial configuration before we fully use the ansible.
    * Use certbot for free ssl configuration (manual). Choose the wildcard mask to support our Nginx reverse proxy.
    * Deploy Nginx container with docker, we can read the configuration on *docker-nginx roles*
2. Configure **instance-b**
    * Register ssh-key jenkins@instance-a on DigitalOcean
    * Create instance-b with minimum specification 2GB of RAM
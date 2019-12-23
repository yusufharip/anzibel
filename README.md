# Information

## Topology and Server Specification
Topology will appear here
![Topology](/images/topology.jpeg)

## Development
**Local: Vagrant**
You can view Vagrantfile for local machine configuration.

**Production: Digital Ocean**
My droplets configuration like image above.

## Configuration Process
1. Configure **instance-a**
    * Register ssh-key jenkins and root in machine to github (manual). 
    * Run *instance-a.sh* for initial configuration before we fully use the ansible.
    * Use certbot for free ssl configuration (manual). Choose the wildcard mask to support our Nginx reverse proxy.
    * Create ansible roles for converting the infrastructure as code
        * Write roles for docker configuration, docker elasticsearch, docker nginx, jenkins configuration, and elasticsearch firewall
        * **docker-nginx** : configure the nginx reverse proxy on default.conf and ssl files. Both files on templates folder
        * **docker-elasticsearch** : dockerfile for creating elasticsearch custom image with S3 Repository plugin and docker-compose for serving the custom image. Both files on template folder
        * **docker** : installment and configuration for docker
        * **essential** : mandatory application will be install here
        * **jenkins** : installment and configuration for jenkins
        * **elastic-fw** : configuration firewall for elasticsearch (instance-b)
    * Create ansible-playbook for execute targeted host with roles configuration
    * But first i have to setup deployment machine manually for ansible and then we can move to essentials roles
    * Configure jenkins and install plugins
        * In this case i'm create freestyle jobs project on jenkins which run some command and invoke ansible-playbook
2. Configure **instance-b**
    * Register ssh-key jenkins@instance-a on DigitalOcean so this instance auto get ssh-key for deployment server
    * Create instance-b with minimum specification 2GB of RAM
    * Let the rest configuration executed in instance-a

## Result
You can view the result of this by visit:
main url: https://hompimpah.xyz
jenkins: https://jk.hompimpah.xyz
elastic: https://elastic.hompimpah.xyz
testing: https://testing.hompimpah.xyz
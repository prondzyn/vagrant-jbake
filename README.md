vagrant-jbake
=============

[Vagrant](https://www.vagrantup.com) setup files for blogging with [JBake](http://jbake.org).

With a few small modifications it can be applied to any site based on JBake project. 

I wrote a little about this topic in Polish on my [blog](http://prondzyn.com/2015/01/21/przygotowanie-vagranta-do-blogowania-z-jbake/).

### How to run your JBake project on Vagrant
1. [Install Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](https://docs.vagrantup.com/v2/installation/)
3. Clone this repository 
4. Modify the Vagrant file so that your JBake folder is referenced `config.vm.synced_folder "../../../KodujLepiejPL", "/home/vagrant/project", create: false`
5. `vagrant up`
6. `vagrant ssh`
7. `cd project`
8. `jbake -s` 
9. Open your favourite browser at [http://localhost:8820](http://localhost:8820) to preview your page
10. Have fun! :)
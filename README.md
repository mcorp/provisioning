# mcorp provisioning for vagrant

## Dependencies

 * Vagrant
 * ansible

Run to install dependencies (ubuntu only):

```shell
$ ./host-dependencies.sh
```

## Using

```shell
export $BASE_PATH=~/projects
mkdir -p $BASE_PATH
cd $BASE_PATH
git clone git@github.com:mcorp/provisioning.git
cp provisioning/Vagrantfile.example Vagrantfile
vi Vagrantfile
```

## Roles avaliable

[See roles directory](https://github.com/mcorp/provisioning/tree/master/roles)

## Example of vagrant file

```rubby
Vagrant.configure('2') do |cfg|
  cfg.vm.synced_folder "/path/to/projects", "/vagrant", nfs: true

  cfg.vm.define "mcorp" do |config|
    config.vm.network :private_network, ip: "10.11.12.13"
    config.vm.box = "ubuntu/trusty64"
    config.vm.network :forwarded_port, guest: 3000, host: 3000
    config.vm.network :forwarded_port, guest: 4000, host: 4000
    config.vm.network :forwarded_port, guest: 5432, host: 5432 # Postgress
    config.ssh.forward_agent = true


    config.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'provisioning/mcorp.box.yml'
      ansible.sudo = true
      ansible.host_key_checking = false
    end
  end
end
```
[More examples](https://github.com/mcorp/provisioning/blob/master/Vagrantfile.example)

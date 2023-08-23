
``` 
ansible hosts_to_add_key -m ping -i ansible_hosts --user ubuntu --key-file /workspace/configuration-management/kifungu.pem

```

```
ansible-playbook newUserPlaybook.yml -i ansible_hosts -u ubuntu --key-file /workspace/configuration-management/kifungu.pem -e "key=~/.ssh/id_rsa.pub"
```

```
ansible-playbook newUserPlaybook.yml -i ansible_hosts -u ubuntu --key-file /gitpod/keys/kifungu.pem -e "key=~/.ssh/id_rsa.pub"
```

```
ssh-keygen -t rsa -b 4096
```

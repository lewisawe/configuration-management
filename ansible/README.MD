```
ssh-keygen -t rsa -b 4096
```

```
chmod 700 kifungu.pem
```


``` 
ansible hosts_to_add_key -m ping -i ansible_hosts --user ubuntu --key-file ~/.ssh/kifungu.pem

```

```
ansible-playbook newUserPlaybook.yml -i ansible_hosts -u ubuntu --key-file ~/.ssh/kifungu.pem -e "key=~/.ssh/id_rsa.pub"
```

```
ansible-playbook newUserPlaybook.yml -i ansible_hosts -u ubuntu --key-file ~/.ssh/kifungu.pem -e "key=~/.ssh/id_rsa.pub"
```

```
id John
```

```
grep '^John:' /etc/passwd
```


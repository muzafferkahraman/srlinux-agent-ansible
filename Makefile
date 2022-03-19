all: install_sshpass create_key_pair install_keys_to_routers run_ansible

install_sshpass:
        yum -y install sshpass

create_key_pair:
        ssh-keygen -t RSA -f ~/.ssh/id_rsa -N '' <<< y

install_keys_to_routers:
        sh install_keys.sh

run_ansible:
        sh run_ansible.sh

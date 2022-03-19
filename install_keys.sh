for router in $(cat router_list.txt); do sshpass -f password.txt  ssh-copy-id admin@$router; done

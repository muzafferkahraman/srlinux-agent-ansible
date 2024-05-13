rm -f /etc/ansible/hosts
cp router_list.txt /etc/ansible/hosts
sed -i '1s/^/[srlinux]\n/' /etc/ansible/hosts
ansible-playbook playbooks/deploy.yml

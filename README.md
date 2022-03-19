This repo includes the ansible playbooks and related shell scripts to deploy the evpn agent to the SRLINUX routers
It takes the router_list.txt file as the input to get the SRLINUX router addresses

**To deploy**

1. git clone https://github.com/muzafferkahraman/srlinux-agent-ansible.git
2. cd /srlinux-agent-ansible
3. make all
4. Check if the agent is properly installed at the router
>       ssh admin@<router ip>  (password: admin)
> 		show system application static-vxlan-agent
5. The expected output should be:

![image info](./images/agent_application.png)

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

- https://github.com/springy21/derek-cyber-security/blob/main/Diagrams/Cloud%20Network%20Diagram%20Including%20ELK%20VM.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - https://github.com/springy21/derek-cyber-security/blob/main/Ansible/install-elk.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting access to the network.
- Load balancers help to maintain availability according to the CIA Triad. One advantage allows us to have a VM we connect to from our workstation and allows us to setup container and using ansible push configurations across our web servers and our elk server.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system logs.
- Filebeat caputres log files and log events.
- Metricbeat records metrics and statistics of the webservers.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web 1    | DVMA     | 10.0.0.5   | Linux            |
| Web 2    | DVMA     | 10.0.0.6   | Linux            |
| Web 3    | DVMA     | 10.0.0.7   | Linux            |
| Elk VM   | ELK Stack| 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the load balancer machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Your current public IP address. (do not want to disclose my public ip address.)

Machines within the network can only be accessed by your docker container.
- We allowed access to the ELK VM via the public key on our ansible container on our jumpbox.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | Workstation Public IP|
| Web 1    | No                  | Continaer Public Key |
| Web 2    | No                  | Contianer Public Key |
| Web 3    | No                  | Contianer Public Key |
| LB       | Yes                 | Any                  |
| Elk VM   | Yes                 | Continaer Public Key |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The main advantage of being able to auto configure multiple servers with the same settings and applications installed to help remove some human error. 

The playbook implements the following tasks:
- Login to your Ansible Conatiner on the jump box and add the Elk VM IP to the Ansible hosts file under its own group.
- Create the Elk playbook.
- Run the Elk playbook to configure and setup the Elk VM.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

- https://github.com/springy21/derek-cyber-security/blob/main/Diagrams/docker_ps_output.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web 1: 10.0.0.5
- Web 2: 10.0.0.6
- Web 3: 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat will allow us to capture and view log files and events. Metricbeat will allows us to gain statistics and metrics this will provide insight on location of traffic among other things.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Elky playbook template file to /etc/ansible
- Update the elk playbook file to include following published ports 5601:5601, 9200:9200, 5044:5044
- Run the playbook, and navigate to ELK public IP and ensure Kibana is installed and working properly.


- The playbook is a yml file and copy it to /etc/anisible
- You need to update that anisible hosts file to a new group and include the IP address you want it to be send to. In the playbook at top of the file to determine what hosts you want to send the playbook to which needs to be the group you set in the hosts file.
- You need to navigate to http://[your.VM.IP]:5601/app/kibana to ensure Kibana is setup properly on your elk server.

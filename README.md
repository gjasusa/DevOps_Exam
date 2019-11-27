# nodeJS deployment with Supervisor

Pre-requirements:
* installed Jenkins
* created and hooked Jenkins Slave with Jenkins Master via SSH keypair
* jenkins user must be is sudoers with nopassword

# Infra details:

Global creds:
---
user: root

user: jenkins

password: 000000

jenkins-master:
---
IP: 192.168.56.100

jenkins-student-slave:
---
IP: 192.168.56.200

# Pipeline explanation:

* stage 1: install ShellCheck with shell script, what is checks your shell script's syntax
* stage 2: checking install_node.sh shell script's syntax with ShellCheck
* stage 3: deploying nodeJS server with Supervisor and creating a systemd unit file for nodeJS
* stage 4: checks your expected state of your nodeJS server

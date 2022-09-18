# RMIT University Vietnam
# Course: COSC2767 Systems Deployment and Operations
# Semester: 2022B
# Assessment: Assignment 3
# Author: Nguyen Quoc Huy
# ID: s3818764
# Created  date: 18/09/2022 
# Last modified: 18/09/2022
# Acknowledgement: Google


ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/buildAndPushMariadb.yml
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/buildAndPushApache.yml
sleep 20
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullMariadbToCreateContainer.yml
sleep 20 
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullApacheToCreateContainer.yml
sleep 10
python /home/ansibleadmin/cosc2767-rmit-store/test-ui.py
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullMariadbProd.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullApacheProd.yml

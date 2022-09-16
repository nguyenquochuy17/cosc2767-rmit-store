ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/buildAndPushMariadb.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullMariadbToCreateContainer.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/buildAndPushApache.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullApacheToCreateContainer.yml
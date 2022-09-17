ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/buildAndPushMariadb.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullMariadbToCreateContainer.yml
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullMariadbProd.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/buildAndPushApache.yml
sleep 10
ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullApacheToCreateContainer.yml

# copy the testing python script
# sudo python /var/www/html/cosc2767-rmit-store/test-ui.py

ansible-playbook /home/ansibleadmin/cosc2767-rmit-store/pullApacheProd.yml
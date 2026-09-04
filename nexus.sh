======new updates================
NEXUS SETUP COMMANDS : (copy paste these commands one by one)


yum install java-21-amazon-corretto -y

cd /opt
go to official documentation of nexus:
https://help.sonatype.com/en/download.html 
copy the url :for unix/linux link
wget https://download.sonatype.com/nexus/3/nexus-3.96.0-09-linux-x86_64.tar.gz
wget https://download.sonatype.com/nexus/3/nexus-3.96.0-09-linux-x86_64.tar.gz
tar -zxvf nexus-3.96.0-09-linux-x86_64.tar.gz
useradd nexus
chown -R nexus:nexus nexus-3.96.0-09 sonatype-work
su - nexus
cd /opt/nexus-3.96.0-09/bin/
./nexus start

once login , there is issue with nexus so again restart the server.
./nexus restart
again login with username:admin and password : you created
==================================
sudo yum update -y
sudo yum install wget -y
sudo yum install java-17-amazon-corretto-jmods -y
sudo mkdir /app && cd /app
sudo wget https://download.sonatype.com/nexus/3/nexus-3.79.1-04-linux-x86_64.tar.gz
sudo tar -xvf nexus-3.79.1-04-linux-x86_64.tar.gz
sudo mv nexus-3.79.1-04 nexus
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype*
sudo sed -i '27  run_as_user="nexus"' /app/nexus/bin/nexus
sudo tee /etc/systemd/system/nexus.service > /dev/null << EOL
[Unit]
Description=nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
User=nexus
Group=nexus
ExecStart=/app/nexus/bin/nexus start
ExecStop=/app/nexus/bin/nexus stop
User=nexus
Restart=on-abort

[Install]
WantedBy=multi-user.target
EOL
sudo chkconfig nexus on
sudo systemctl start nexus
sudo systemctl enable nexus
sudo systemctl status nexus

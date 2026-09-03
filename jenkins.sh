yum install java-21-amazon-corretto -y
go to official website of jenkins: jenkins.io, copy redhat os 
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins

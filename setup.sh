yum install git java-17 docker -y
systemctl start docker
systemctl status docker
chmod 777 /var/run/docker.sock

  sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
  yum install jenkins -y
  systemctl start jenkins
  systemctl status jenkins
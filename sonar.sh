#! /bin/bash
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-25.12.0.117093.zip
unzip sonarqube-25.12.0.117093.zip
yum install java-21-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-25.12.0.117093 -R
chmod 777 sonarqube-25.12.0.117093 -R
su - sonar

cd /opt
cd sonarqube-25.12.0.117093/
cd bin
cd linux-x86-64/
./sonar.sh start
./sonar.sh status

#run this on server manually
#sh /opt/sonarqube-25.12.0.117093/bin/linux-x86-64/sonar.sh start
#sh /opt/sonarqube-25.12.0.117093/bin/linux-x86-64/sonar.sh status
#echo "user=admin & password=admin"

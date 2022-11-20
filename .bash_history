clear
pwd
clear
cd /opt
ll
yum install wget -y
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
yum install jdk-8u131-linux-x64.rpm -y
java --version
java -version
javac
yum install tar wget -y
wget http://download.sonatype.com/nexus/3/nexus-3.15.2-01-unix.tar.gz
tar -zxvf nexus-3.15.2-01-unix.tar.gz
mv /opt/nexus-3.15.2-01 /opt/nexus
useradd nexus
visudo
chown -R nexus:nexus /opt/nexus
chown -R nexus:nexus /opt/sonatype-work
chmod -R 775 /opt/nexus
chmod -R 775 /opt/sonatype-work
vi /opt/nexus/bin/nexus.rc
ln -s /opt/nexus/bin/nexus /etc/init.d/nexus
su - nexus 
clear
ll

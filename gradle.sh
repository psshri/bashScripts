## download the bin file from the link given in (https://docs.gradle.org/current/userguide/installation.html)
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-8.5-bin.zip
ls /opt/gradle/gradle-8.5/
export PATH=$PATH:/opt/gradle/gradle-8.5/bin
gradle -v

from ubuntu:18.04
arg ACCEPT_EULA=Y
run apt update
run apt upgrade -y
run apt install curl gnupg2 -y
run curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
run curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
run apt update
run apt upgrade -y
run apt install msodbcsql17 -y
run apt install mssql-tools -y
run apt install unixodbc-dev -y
ENV PATH="$PATH:/opt/mssql-tools/bin"
run apt install locales
run echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
run locale-gen
ENV LANG='en_US.UTF-8' LANGUAGE='en_US.UTF-8' LC_ALL='en_US.UTF-8'
# run localectl set-locale LANG=en_US.UTF-8
# run echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
# run echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
# run source ~/.bashrc
# ENV PATH="$PATH:/opt/mssql-tools/bin"
# run echo $PATH


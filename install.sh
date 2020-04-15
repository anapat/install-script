apt update
apt upgrade
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
# add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
apt-get install -y python-pip
apt-get install -y ffmpeg
apt-get install -y git-flow
mkdir -p ~/Project

# Redis and Memcached and MariaDB
sudo apt install -y redis-server
apt-get install memcached libmemcached-tools -y
systemctl start redis
systemctl start memcached
apt-get install -y mariadb-server
# sudo mysql_secure_installation
# http://www.daniloaz.com/en/how-to-create-a-user-in-mysql-mariadb-and-grant-permissions-on-a-specific-database/

# Django
sudo apt-get install -y python-dev default-libmysqlclient-dev
sudo apt-get install -y python3 python3-dev build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev
sudo apt-get install -y libpq-dev
sudo apt install -y libxml2-dev libxmlsec1-dev libxmlsec1-openssl


# Rabbit
curl -fsSL https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc | sudo apt-key add -
sudo apt-key adv --keyserver "hkps://keys.openpgp.org" --recv-keys "0x0A9AF2115F4687BD29803A206B73A36E6026DFCA"
sudo apt-get install -y apt-transport-https
# add-apt-repository "deb http://dl.bintray.com/rabbitmq-erlang/debian bionic erlang-21.x"
apt-get update -y
apt-get install -y  erlang-base \
                    erlang-asn1 erlang-crypto erlang-eldap erlang-ftp erlang-inets \
                    erlang-mnesia erlang-os-mon erlang-parsetools erlang-public-key \
                    erlang-runtime-tools erlang-snmp erlang-ssl \
                    erlang-syntax-tools erlang-tftp erlang-tools erlang-xmerl
sudo apt-get install rabbitmq-server -y --fix-missing

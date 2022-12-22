# Python Install
pythonVersion=3.7.13
prgs_path=/root/_prgs
now_path=$(pwd)

[[ ! -d $prgs_path ]]&& mkdir $prgs_path
if [ -f $prgs_path/Python-$pythonVersion.tgz ];then
        echo Using $(ls $prgs_path/Python-$pythonVersion.tgz)
else
 	yum group install -y "Development Tools"
	yum install -y gcc openssl-devel bzip2-devel

	yum install -y wget
	yum install -y  pyOpenSSL;yum install -y  pyOpenSSL-doc;yum install -y  python-backports-ssl_match_hostname;yum install -y  python-passlib;yum install -y  zlib-devel;yum install -y  libffi-devel;yum install -y  openssl opennssl-devel
        wget https://www.python.org/ftp/python/$pythonVersion/Python-$pythonVersion.tgz -O $prgs_path/Python-$pythonVersion.tgz
        cd $prgs_path/
        tar xzf $prgs_path/Python-$pythonVersion.tgz
        cd Python-$pythonVersion
        ./configure
        make altinstall
        wget https://bootstrap.pypa.io/get-pip.py -O $prgs_path/get-pip.py
        python3.7 $prgs_path/get-pip.py
fi

# Mysql Client
wget https://dev.mysql.com/get/mysql80-community-release-el7-7.noarch.rpm
rpm -Uvh mysql80-community-release-el7-7.noarch.rpm
yum install -y mysql-community-devel.x86_64

# Kafka Client
yum install -y libsasl2-dev
yum install -y cyrus-sasl-devel
yum install -y cyrus-sasl-gssapi

# Pip install
pip install --upgrade pip
cat >requirements.txt <<EOF
scipy
jsonToCsv
ibm-db
pymongo
web-py
Pandas
numpy
matplotlib
scikit-learn
seaborn
ray
h5py
pillow
mysqlclient
PyMySQL
tqdm
impyla
PyHive
sasl
thrift
thrift-sasl
thriftpy
thriftpy2
kafka-python
EOF
pip3.7 install -r requirements.txt --root-user-action=ignore
pip3.7 install git+https://git@github.com/SKTBrain/KoBERT.git@master




# Return to now_path
cd $now_path

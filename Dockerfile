FROM centos:centos6

# Install Centos6 vault repos
COPY repos/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
# Install EPEL and PHP repos
RUN rpm -Uvh https://archives.fedoraproject.org/pub/archive/epel/6/x86_64/epel-release-6-8.noarch.rpm
COPY repos/remi.repo /etc/yum.repos.d/remi.repo
COPY repos/RPM-GPG-KEY-remi /etc/pki/rpm-gpg/RPM-GPG-KEY-remi

# Install packages
RUN yum install -y \
    mysql \
    php \
    openvpn \
    php-mysql \
    php-devel \
    php-pecl-memcache \
    php-pspell \
    php-snmp \
    php-xmlrpc \
    php-xml \
    php-xdebug\
    epel-release \
    xz.x86_64 \
    openssh-clients.x86_64 \
    php-mbstring.x86_64 \
    gmp.i686 \
    php-gd.x86_64 \
    php-bcmath.x86_64 \
    zip \
    nc \
    MySQL-python \
    python-requests.noarch \
    && yum clean all \
    && rm -rf /var/cache/yum

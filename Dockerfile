FROM toopher/centos-i386:centos6
MAINTAINER The U-TEST Team

# A working C/C++ compiler for 32/64 bits binaries
RUN yum install -y gcc-c++ glibc-devel libstdc++-devel libgcc

# GIT & CMAKE
RUN yum install -y git cmake ant wget swig createrepo rpm-build

# Some U-TEST dependancies
RUN yum install -y postgresql postgresql-server postgresql-odbc unixODBC

# Dependancies for U-TEST Externals
RUN yum install -y python-twisted xerces-c-devel ncurses-libs libicu \
                   bzip2-libs libzip openmpi mpich readline \
                   python-libs libcap-ng unixODBC-devel libxml2-devel \
                   python-devel sqlite-devel openssl-devel keyutils-libs-devel \
                   cppunit-devel java-1.7.0-openjdk-devel

RUN yum install -y inkscape doxygen

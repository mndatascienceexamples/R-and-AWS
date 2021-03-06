#!/bin/bash

###########################################################
#
# Data Science Examples Blog
# 	Site: http://datascienceexamples.com
# 	Blog Post:  https://datascienceexamples.com/2018/08/03/rstudio-server-on-aws-ec2/
# 	Last Update: 9/5/2018
#
# Desc: download R installation packages and prepare for install
#
###########################################################

# NOTES:  
#   1. make utility will need time to run - could be up to 90 minutes to complete
#   2. Scripts set up to run from ec2-user home directory - /home/ec2-user
#   3. Do not need root access to run script
#
#  >  /home/ec2-user/R-and-AWS-S3-master/R/Server/Script2_download_R_utils.sh

echo 'Get binaries for EC2 installation...'

mkdir ~/lib

cd ~/lib
wget http://cran.r-project.org/src/base/R-3/R-3.5.1.tar.gz

wget https://download2.rstudio.org/rstudio-server-rhel-1.1.456-x86_64.rpm


wget -q https://cran.r-project.org/src/contrib/jsonlite_1.5.tar.gz
wget -q https://cran.r-project.org/src/contrib/mime_0.5.tar.gz
wget -q https://cran.r-project.org/src/contrib/curl_3.2.tar.gz
wget -q https://cran.r-project.org/src/contrib/openssl_1.0.2.tar.gz
wget -q https://cran.r-project.org/src/contrib/R6_2.2.2.tar.gz
wget -q https://cran.r-project.org/src/contrib/httr_1.3.1.tar.gz
wget -q https://cran.r-project.org/src/contrib/base64enc_0.1-3.tar.gz
wget -q https://cran.r-project.org/src/contrib/httr_1.3.1.tar.gz
wget -q https://cran.r-project.org/src/contrib/digest_0.6.15.tar.gz
wget -q https://cran.r-project.org/src/contrib/Rcpp_0.12.18.tar.gz
wget -q https://cran.r-project.org/src/contrib/BH_1.66.0-1.tar.gz
wget -q https://cran.r-project.org/src/contrib/xml2_1.2.0.tar.gz
wget -q https://cran.r-project.org/src/contrib/aws.signature_0.4.4.tar.gz
wget -q https://cran.r-project.org/src/contrib/aws.s3_0.3.12.tar.gz


tar zxf R-3.5.1.tar.gz && cd R-3.5.1

./configure --prefix=/opt/R/3.5.1/bin/R --with-x=no --enable-R-shlib

#make - set up for installation
make
make pdf
make info


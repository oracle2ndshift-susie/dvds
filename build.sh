#!/bin/sh

docrootread=`grep -i 'DocumentRoot' /etc/httpd/conf/httpd.conf | grep -v '#'  | head -n 1`
docroot=`echo $docrootread | while read A B
do 
  cd $B
  git clone --recursive https://github.com/oracle2ndshift-susie/dvds.git
  cd dvds
  echo 'Enter database root password: '; read dbpwd
  sed -i "s/Template_Password/${dbpwd}/g" build.sql
  mysql -Dsys -u root -p  < build.sql
done


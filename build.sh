#!/bin/sh

docrootread=`grep -i 'DocumentRoot' /etc/httpd/conf/httpd.conf | grep -v '#'  | head -n 1`
echo $docrootread | while read A B
do 
  cd $B
  git clone --recursive https://github.com/oracle2ndshift-susie/dvds.git
  cd dvds
  b1=`ls -1 | grep build.sh | wc -l`
  b2=`ls -1 | grep build.sql | wc -l`
  if [ $b1 != 1 || $b2 != 1 ]; then
    echo "Something went wrong.  Please try again"
  else
    echo 'Enter database root password: '; read dbpwd
    sed -i "s/Template_Password/${dbpwd}/g" build.sql
    mysql -Dsys -u root -p  < build.sql
  fi
done


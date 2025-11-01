File: README.dat

Purpose: This repo builds a dvd library with both viewing and options for adding 
  or editing items in your library.
  
History:  Susie White 2010 Created

Prerequisites:

  - Supported operating system: Linux
  - You must already have your Mysql software installed and default sys database installed.
  - Mysql binary available in your path.

Choose a Disk location which is readable by your web browser service.  e.g. /var/www/html

  cd /var/www/html

Pull the code:

  - git clone --recursive https://github.com/oracle2ndshift-susie/dvds.git

Cd to the newly created dvds repo and then the admin directory with build scripts:  

  - cd dvds
  - cd admin

Run the build.sh, which creates the o2s database, dvds table, function and an 
application user called 'dba' with password 'dba.  Feel free to change the password
and remember to edit the env.php and dbconnect.php files to reflect the new password.

  - sh build.sh


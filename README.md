File: README.md

Purpose: This repo builds a localhost dvd library and browser-served application with options for 
  both viewing and adding or editing items in your library.
  
History:  Susie White 2010 Created

Prerequisites:

  - Supported operating system: Linux
  - You must already have your Mysql software installed and default sys database installed.
  - Visit this link if you need mysql:
  -   Linux: https://dev.mysql.com/doc/refman/8.4/en/linux-installation.html
  -   Mac:   https://dev.mysql.com/doc/mysql-macos-excerpt/5.7/en/macos-installation.html
  - Mysql binary available in your path.

Choose a Disk location which is readable by your web browser service.  e.g. /var/www/html

  - grep -i 'DocumentRoot' /etc/httpd/conf/httpd.conf -or- grep -i 'DocumentRoot' /etc/apache2/sites-available/*.conf
  - cd \<to DocumentRoot\>

Pull the code:

  - git clone --recursive https://github.com/oracle2ndshift-susie/dvds.git

Cd to the newly created dvds repo and then the admin directory with build scripts:  

  - cd admin

Run the build.sh, which creates the o2s database, dvds table, function and an 
application user called 'dba' with password 'dba.  Feel free to change the password
and remember to edit the env.php and dbconnect.php files to reflect the new password.

  - sh build.sh

Now you should be able to access, view and update your library.  

  - http://localhost/dvds/index.php


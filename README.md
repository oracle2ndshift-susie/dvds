File: README.md

Purpose: This repo builds a localhost dvd library and browser-served application with options for 
  both viewing and adding or editing items in your library.
  
History:  Susie White 2010 Created

Prerequisites:

  - Supported operating system: Linux or MacOS
  - You must already have your Mysql software installed and default sys database installed.
  - Visit this link if you need mysql:
     Linux: https://dev.mysql.com/doc/refman/8.4/en/linux-installation.html
     Mac:   https://dev.mysql.com/doc/mysql-macos-excerpt/5.7/en/macos-installation.html
  - Mysql binary available in your path.
   
Create a copy of build.sh from this repo and execute it.

Run the build.sh, which creates the o2s database, dvds table, function and an 
application user called 'dba' with password 'dba.  Feel free to change the password
and remember to edit the env.php and dbconnect.php files to reflect the new password.

  - build.sh

Now you should be able to access, view and update your library.  

  - http://localhost/dvds/index.php


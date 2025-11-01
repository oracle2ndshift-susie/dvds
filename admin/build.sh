echo 'Enter directory of web site document root: '; read webdir
cd $webdir
echo "pwd = `pwd`"
mkdir dvds_gif
ls -ltr

echo 'Enter database username: '; read dbuser
echo 'Enter database password: '; read dbpwd
mysql -u${dbuser} -p${dbpwd} -Dsys < build.sql



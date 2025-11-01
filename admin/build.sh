echo 'Enter directory of web site document root: '; read webdir
cd $webdir
echo "pwd = `pwd`"
mkdir dvds_gif
ls -ltr

echo 'Enter database root password: '; read dbpwd
mysql -Dsys -u root -p  < build.sql



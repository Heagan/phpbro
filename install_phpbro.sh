if [ ! $1 ] ; then
	echo "Enter your mamp directory!
eg. install_phpbro.sh /goinfre/gsferopo/mamp/"
	exit
fi

touch add.sh
echo 'lnk="http://127.0.0.1:8080/"
lnk+=$1' >> add.sh
echo 'dir="'$1'/apache2/htdocs/"
dir+=$2
if [ ! -d $dir ] && [ -a $1 ] && [ $1 ] ; then
	mkdir $dir
	cp $1 $dir
	echo $lnk
	open $lnk
	exit
fi;
if [ -d $dir ] && [ -a $1 ] && [ $1 ] ; then
	cp $1 $dir
	echo $lnk
	open $lnk
	exit
fi;
open $dir' >> add.sh
mv add.sh $1/apache2/htdocs/add.sh
echo 'alias phpbro="bash ~/mamp/apache2/htdocs/add.sh $1 $2"' >> ~/.zshrc
echo "Usage:
phpbro [file] - to run php script in browser
phpbro - to open htdocs directory in MAMPs installation directory"
echo 'Installation complete!'
echo 'Please restart your terminal window'
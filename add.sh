lnk="http://127.0.0.1:8080/"
lnk+=$1
dir="/goinfre/gsferopo/mamp/apache2/htdocs/"
dir+=$2/
ploc=$( echo | pwd | rev | cut -d / -f 1 | rev )
loc=$( pwd )
if [ ! -d $dir ] && [ -a $1 ] && [ $1 ] ; then
	mkdir $dir
	cp -r $loc $dir
	echo $lnk
	open $dir$ploc/$1
	exit
fi;
if [ -d $dir ] && [ -a $1 ] && [ $1 ] ; then
	cp -r $loc $dir
	open $dir$ploc/$1
	exit
fi;
open $dir

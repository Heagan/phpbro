lnk="http://127.0.0.1:8080/"
dir=$HOME"/mamp/apache2/htdocs/"
dir+=$2/
ploc=$( echo | pwd | rev | cut -d / -f 1 | rev )
loc=$( pwd )

if [ ! -d $dir ] && [ -a $1 ] && [ $1 ] || [ $@ > 2 ]; then
	mkdir $dir
	cp -fr $loc $dir
	lnk+=$2/$ploc/$1
	open $lnk
	exit
fi;
if [ -d $dir ] && [ -a $1 ] && [ $1 ] ; then
	cp -fr $loc $dir
	lnk+=$ploc/$1
	open $lnk
	exit
fi;
open $dir

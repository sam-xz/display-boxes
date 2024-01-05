#update all silently

sudo apt-get -o Dpkg::Options::='--force-confold' --force-yes -fuy dist-upgrade

#Dpkg::Options::='--force-confold' :
#--force-confold: do not modify the current configuration file, 
#the new version is installed with a .dpkg-dist suffix. 
#With this option alone, even configuration files that you have not modified are left untouched. 
#You need to combine it with --force-confdef to let dpkg overwrite configuration files that you have not modified.
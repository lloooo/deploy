TAG=`cat ./version.txt`
echo $TAG ;
cd $HOME/devspace/deploy ;
./rocket_pub.sh  --prj deploy  --tag $TAG --host $*

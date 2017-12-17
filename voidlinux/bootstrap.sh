mkdir docker-void
xbps-install -y -r $PWD/docker-void --repository=http://repo.voidlinux.eu/current -S base-voidstrap
tar -pC docker-void -c . | docker import - <REPOSITORY NAME>
rm -rf docker-void

#echo "Quin usuari vols crear? "
#read user
docker compose up postgres -d
# Obre altre terminal i executa el següent:
docker exec -it $(docker ps|grep postgres|cut -f1 -d" ") /bin/bash
psql template1 -U admin -c "CREATE USER jordi CREATEDB"
psql template1 -U jordi
# En acabar
# docker compose down --remove-orphans
# docker rmi $(docker images|grep postgres|tr -s " " |cut -f3 -d" ")  


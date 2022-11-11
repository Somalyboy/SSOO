#!bin/bash
mysqldump proyecto -u root -pRoot1234! > /home/usuario/proyectoSEX.sql
rsync -e "ssh -p 4444" /home/usuario/proyectoSEX.sql usuario@192.168.196.136:/home/usuario/proyectoSEX.sql

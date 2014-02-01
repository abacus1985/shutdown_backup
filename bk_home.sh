#!/bin/sh
####################################
#           Backup script          #
#                 by               #
#               Abacus             #
#                                  #
#       http://www.isoardi.info    #
####################################

# Cosa copiare. 
backup_files="/home/abacus"

# Dove fare la copia di backup.
dest="/media/abacus/backup/"

# Create archive filename.
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
#hostname=$(hostname -s)
archive_file="bk_abacus_home_$year$month$day.tar.gz"

# Stampa messaggio di avvio.
echo "Copia di backup di $backup_files in $dest$archive_file"
date
echo

# Esegue il backup con tar.
tar czf $dest$archive_file $backup_files --exclude "/home/abacus/Documenti/Biblioteca/"

# Stampa messaggio di fine backup.
echo
echo "Backup completato"
date

# Elenco dei file in $dest per controllarne la dimensione
ls -lh $dest

shutdown -h now



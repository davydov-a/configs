# Mysql tips

##Mysql dump

create dump: `read -s passwd ; mysqldump -udb_user -p$passwd db_name --single-transaction |pv -bat |gzip > dump.`$(date +'%d.%m.%Y')`.gz`

restore dump: gunzip < dump.sql.gz | mysql -udb_user -p db_name
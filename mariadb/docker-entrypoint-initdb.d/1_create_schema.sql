#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and need db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_SAVE_PATH/mysql not found.
#
# if your $DATA_SAVE_PATH/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

CREATE DATABASE IF NOT EXISTS `luche_common` COLLATE 'utf8_general_ci' ;
CREATE USER 'commonUser'@'%' IDENTIFIED BY '4cjCnDs2YtSwGlPL';
GRANT ALL PRIVILEGES ON `luche_common`.* TO 'commonUser'@'%';

CREATE DATABASE IF NOT EXISTS `luche_fdrs` COLLATE 'utf8_general_ci' ;
CREATE USER 'fdrsUser'@'%' IDENTIFIED BY 'nfwz6YXdo8FJgdyy';
GRANT ALL PRIVILEGES ON `luche_fdrs`.* TO 'fdrsUser'@'%';

CREATE DATABASE IF NOT EXISTS `luche_flights` COLLATE 'utf8_general_ci' ;
CREATE USER 'flightsUser'@'%' IDENTIFIED BY 'ZDYaombMn6FA4mLW';
GRANT ALL PRIVILEGES ON `luche_flights`.* TO 'flightsUser'@'%';

CREATE DATABASE IF NOT EXISTS `luche_runtime` COLLATE 'utf8_general_ci' ;
CREATE USER 'runtimeUser'@'%' IDENTIFIED BY '6xdDMh5U7gLPIRZ3';
GRANT ALL PRIVILEGES ON `luche_runtime`.* TO 'runtimeUser'@'%';

FLUSH PRIVILEGES ;

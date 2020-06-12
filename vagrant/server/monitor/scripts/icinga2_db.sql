CREATE DATABASE icinga2_db;
GRANT ALL PRIVILEGES on icinga2_db.* to 'icinga2_user'@'localhost' identified by 'password';
FLUSH PRIVILEGES;
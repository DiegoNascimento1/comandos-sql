CREATE USER `novousuario`@`%` IDENTIFIED WITH caching_sha2_password BY 'Senha';
GRANT Alter, Alter Routine, Create, Create Routine, Create Temporary Tables, Create View, Delete, Drop, Event, Execute, Index, Insert, Lock Tables, References, Select, Show View, Trigger, Update ON *.* TO `novousuario`@`%`;
GRANT ALL PRIVILEGES ON *.* TO 'novousuario'@'localhost';
FLUSH PRIVILEGES;
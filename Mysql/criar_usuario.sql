CREATE USER `novousuario`@`%` IDENTIFIED WITH mysql_native_password BY 'Senha';
GRANT Alter, Alter Routine, Create, Create Routine, Create Temporary Tables, Create View, Delete, Drop, Event, Execute, Index, Insert, Lock Tables, References, Select, Show View, Trigger, Update ON `conta\_digital\_dev`.* TO `novousuario`@`%`;
GRANT Alter, Alter Routine, Create, Create Routine, Create Temporary Tables, Create View, Delete, Drop, Event, Execute, Index, Insert, Lock Tables, References, Select, Show View, Trigger, Update ON `conta\_digital\_homo`.* TO `novousuario`@`%`;
GRANT ALL PRIVILEGES ON *.* TO 'novousuario'@'localhost';
FLUSH PRIVILEGES;
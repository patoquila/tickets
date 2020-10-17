create table roles(
id_rol int not null auto_increment,
rol varchar(20),
primary key(id_rol));

create table sedes(
id_sede int not null auto_increment,
sede text,
primary key (id_sede));

create table usuarios(
id_usuario int not null auto_increment,
usuario text,
password text,
nombres text,
apellidos text,
estado int,
id_rol int,
id_sede int,
primary key (id_usuario),
foreign key(id_rol) references roles(id_rol),
foreign key(id_sede) references sedes(id_sede));

create table tipo_clientes(
id_tipo_cliente int not null auto_increment,
tipo_cliente varchar(15),
primary key (id_tipo_cliente));

create table clientes(
id_cliente int not null auto_increment,
nombres text,
apellidos text,
rut varchar(15),
email text,
id_tipo_cliente int,
primary key (id_cliente),
foreign key (id_tipo_cliente) references tipo_clientes(id_tipo_cliente));

create table casos(
id_caso int not null auto_increment,
caso text,
primary key (id_caso));

create table estados(
id_estado int not null auto_increment,
estado text,
primary key (id_estado));

create table tickets(
id_ticket int not null auto_increment,
fecha_hora_ini datetime,
prioridad int,
observacion text,
fecha_hora_final datetime,
id_estado int,
id_cliente int,
id_usuario int,
id_caso int,
primary key (id_ticket),
foreign key (id_estado) references estados(id_estado),
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_usuario) references usuarios(id_usuario),
foreign key (id_caso) references casos(id_caso));

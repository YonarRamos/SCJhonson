/* BASE DE DATOS DE SC Johnson*/

create database webScJson


create table users(
    id serial not null , 
    username varchar(30) NOT NULL ,
    lastname varchar(30) NOT NULL ,
    password varchar(60) NOT NULL, 
    email varchar(50) UNIQUE,
    PRIMARY KEY (id)
    FOREIGN KEY(rol_id) REFERENCES rols (id) /* relacion de usuario con rols*/
);

/*Base de datos Tokens*/
create table tokens(
    id serial NOT NULL ,
    user_id int NOT NULL ,
    token varchar(255),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

/*Base de datos Products*/
create table products(
    id serial NOT NULL ,
    codigo int NOT NULL ,
    sp_temperatura nvarchar(30) NOT NULL,
    sp_velocidad  nvarchar(30) NOT NULL,
    description varchar(255) NOT NULL, 
    created_at timestamp NOT NULL,
    updated_at timestamp NOT NULL,
)


/* base de datos rols*/
create table rols(
  id smallserial NOT NULL,
  rol varchar(20) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

/* base de datos sync Fecha*/
create table fecha(
    id smallserial not null,
    fecha_ser_web timestamp not null , 
    fecha_server1 timestamp not null,
    fecha_server2 timestamp not null,
    PRIMARY KEY(id)
)
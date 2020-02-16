CREATE DATABASE matriculas;

USE matriculas;

--> Usuario
CREATE TABLE usuario(
    id INT(11) NOT NULL,
    user VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    n_completo VARCHAR(100) NOT NULL
);



--> Alumnos
CREATE TABLE alumnos(
    id_alumnos INT(11) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    a_paterno VARCHAR(40) NOT NULL,
    a_materno VARCHAR(40) NOT NULL,
    rut VARCHAR(9) NOT NULL,
    curso VARCHAR(20) NOT NULL,
    f_nacimiento VARCHAR(40) NOT NULL,
    sexo VARCHAR(40) NOT NULL,
    pais VARCHAR(40) NOT NULL,
    region VARCHAR(40) NOT NULL,
    comuna VARCHAR(40) NOT NULL,
    s_previsional VARCHAR(40) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    observaciones VARCHAR(100) NOT NULL,
    alumnos_id INT(11) NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp
);


--> Apoderados
CREATE TABLE apoderados(
    id_apoderados INT(11) NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    a_paterno VARCHAR(40) NOT NULL,
    a_materno VARCHAR(40) NOT NULL,
    sexo VARCHAR(40) NOT NULL,
    pais VARCHAR(40) NOT NULL,
    comuna VARCHAR(40) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    t_casa VARCHAR(40) NOT NULL,
    t_cel VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL,    
    t_apoderado VARCHAR(40) NOT NULL,
    educacion VARCHAR(40) NOT NULL,
    parentesco VARCHAR(40) NOT NULL,  
    observaciones TEXT,
    rut VARCHAR(9) NOT NULL,
    apoderados_id INT(11) NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp
);

ALTER TABLE apoderados
    ADD PRIMARY KEY (id);

--> Pagos
CREATE TABLE pagos(
    id_pagos INT(11) NOT NULL,
    mes VARCHAR(40) NOT NULL,
    anual VARCHAR(40) NOT NULL,
    v_matricula VARCHAR(40) NOT NULL,
    v_mensualidad VARCHAR(9) NOT NULL,
    f_pago VARCHAR(40) NOT NULL,  
    observaciones TEXT,
    pagos_id INT(11) NOT NULL,
    created_at timestamp NOT NULL DEFAULT current_timestamp
);

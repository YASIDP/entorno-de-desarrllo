
CREATE TABLE Personajes (
    id_personaje INT PRIMARY KEY,
    nombre VARCHAR(50),
    elemento VARCHAR(20),
    rareza INT,
    arma VARCHAR(20)
);


CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(50),
    rango_aventura INT,
    fecha_registro DATE
);


CREATE TABLE Equipamiento (
    id_equipamiento INT PRIMARY KEY,
    nombre VARCHAR(50),
    tipo VARCHAR(20),
    rareza INT
);


CREATE TABLE Objetos (
    id_objeto INT PRIMARY KEY,
    nombre VARCHAR(50),
    tipo VARCHAR(20)
);


CREATE TABLE Personajes_Usuarios (
    id_personaje INT,
    id_usuario INT,
    FOREIGN KEY (id_personaje) REFERENCES Personajes(id_personaje),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);


CREATE TABLE Personajes_Equipamiento (
    id_personaje INT,
    id_equipamiento INT,
    FOREIGN KEY (id_personaje) REFERENCES Personajes(id_personaje),
    FOREIGN KEY (id_equipamiento) REFERENCES Equipamiento(id_equipamiento)
);


CREATE TABLE Usuarios_Objetos (
    id_usuario INT,
    id_objeto INT,
    cantidad INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_objeto) REFERENCES Objetos(id_objeto)
);
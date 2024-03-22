CREATE DATABASE IF NOT EXISTS Biblioteca;

USE Biblioteca;

CREATE TABLE Categorias (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL
);

CREATE TABLE Subcategorias (
    idSubcategoria INT AUTO_INCREMENT PRIMARY KEY,
    subcategoria VARCHAR(255) NOT NULL,
    idCategoria INT,
    FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria)
);

CREATE TABLE Autores (
    idAutor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    nacionalidad VARCHAR(255),
    correoElectronico VARCHAR(255)
);

CREATE TABLE Titulos (
    idTitulo INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    editorial VARCHAR(255),
    isbn VARCHAR(255),
    fechaPublicacion DATE,
    noEjemplares INT,
    idSubcategoria INT,
    FOREIGN KEY (idSubcategoria) REFERENCES Subcategorias(idSubcategoria)
);

CREATE TABLE TitulosAutores (
    idAutor INT,
    idTitulo INT,
    FOREIGN KEY (idAutor) REFERENCES Autores(idAutor),
    FOREIGN KEY (idTitulo) REFERENCES Titulos(idTitulo),
    PRIMARY KEY (idAutor, idTitulo)
);

INSERT INTO Categorias (categoria) VALUES
('Ficción'),
('No ficción'),
('Ciencia ficción'),
('Historia'),
('Biografía');

INSERT INTO Subcategorias (subcategoria, idCategoria) VALUES
('Novela', 1),
('Ensayo', 2),
('Fantasía', 3),
('Guerra', 4),
('Política', 4);

INSERT INTO Autores (nombre, nacionalidad, correoElectronico) VALUES
('Gabriel García Márquez', 'Colombiano', 'gabo@example.com'),
('J.K. Rowling', 'Británica', 'jkrowling@example.com'),
('Isaac Asimov', 'Estadounidense', 'asimov@example.com'),
('Stephen Hawking', 'Británico', 'hawking@example.com');

INSERT INTO Titulos (titulo, editorial, isbn, fechaPublicacion, noEjemplares, idSubcategoria) VALUES
('Cien años de soledad', 'Editorial Sudamericana', '978-0307474728', '1967-05-30', 100, 1),
('Harry Potter y la piedra filosofal', 'Bloomsbury Publishing', '978-0747532743', '1997-06-26', 150, 3),
('Fundación', 'Gnome Press', '978-0553293357', '1951-05-01', 80, 3),
('Breve historia del tiempo', 'Bantam Books', '978-0553380163', '1988-04-01', 120, 2);


INSERT INTO TitulosAutores (idAutor, idTitulo) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);


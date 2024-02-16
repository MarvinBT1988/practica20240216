-- Crear la base de datos Practica20240216DB
CREATE DATABASE Practica20240216DB;
GO

-- Usar la base de datos recién creada
USE Practica20240216DB;
GO

-- Crear la tabla Categorias
CREATE TABLE Categorias (
    CategoriaId INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL
);
GO

-- Crear la tabla Productos
CREATE TABLE Productos (
    ProductoId INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Descripcion NVARCHAR(MAX),
    Imagen IMAGE,
    CategoriaId INT FOREIGN KEY REFERENCES Categorias(CategoriaId) NOT NULL
);
GO


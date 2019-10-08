CREATE DATABASE reciclApp;
USE reciclApp;

CREATE TABLE users
(
    id INT(11) PRIMARY KEY NOT NULL
    AUTO_INCREMENT,
    fullName VARCHAR
    (50) NOT NULL,
    typeDocument VARCHAR
    (20) NOT NULL,
    numberDocument VARCHAR
    (20) NOT NULL,
    mobilePhone INT
    (20) NOT NULL,
    email VARCHAR
    (50) NOT NULL UNIQUE,
    password VARCHAR
    (60) NOT NULL,
    addressHome VARCHAR
    (50) NOT NULL,
    roles INT
    (10) NOT NULL,
    neighborhood VARCHAR
    (50) NOT NULL,
    typeHouse VARCHAR
    (50) NOT NULL,
    membersHome VARCHAR
    (50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp   
)ENGINE=InnoDB DEFAULT CHARSET=utf8,

    CREATE TABLE roles
    (
        id INT(11) PRIMARY KEY NOT NULL
        AUTO_INCREMENT,
    rolName VARCHAR
        (50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8,


        CREATE TABLE materials
        (
            id INT(11) PRIMARY KEY NOT NULL
            AUTO_INCREMENT,
    typeMaterial VARCHAR
            (50) NOT NULL,
    quantity INT
            (50) NOT NULL,
    user_id INT
            (11),
    create_at TIMESTAMP NOT NULL DEFAULT current_timestamp
    CONSTRAINT fk_user FOREIGN KEY
            (user_id) REFERENCES users
            (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8,

            CREATE TABLE collect
            (
                id INT(11) PRIMARY KEY NOT NULL
                AUTO_INCREMENT,
    dateCollect DATE NOT NULL,
    comment VARCHAR
                (255) NULL,
    stated   BOOLEAN NOT NULL DEFAULT false
    user_id INT
                (11),
    create_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user2 FOREIGN KEY
                (user_id) REFERENCES users
                (id)

)



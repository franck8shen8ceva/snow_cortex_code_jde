-- Snowflake DDL statements for BERP tables

CREATE TABLE COMMERCIAL (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE CLIENT (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    commercial_id INT,
    FOREIGN KEY (commercial_id) REFERENCES COMMERCIAL(id)
);

CREATE TABLE PRODUIT (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE SAISON (
    id INT PRIMARY KEY,
    year INT,
    description VARCHAR(255)
);

CREATE TABLE TARIF (
    id INT PRIMARY KEY,
    produit_id INT,
    saison_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (produit_id) REFERENCES PRODUIT(id),
    FOREIGN KEY (saison_id) REFERENCES SAISON(id)
);

CREATE TABLE VENTE (
    id INT PRIMARY KEY,
    client_id INT,
    produit_id INT,
    date DATE,
    quantity INT,
    FOREIGN KEY (client_id) REFERENCES CLIENT(id),
    FOREIGN KEY (produit_id) REFERENCES PRODUIT(id)
);

CREATE TABLE ENTREE_STOCK (
    id INT PRIMARY KEY,
    produit_id INT,
    date DATE,
    quantity INT,
    FOREIGN KEY (produit_id) REFERENCES PRODUIT(id)
);

USE comercial;

CREATE TABLE comclien (
    n_numuclien INT NOT NULL AUTO_INCREMENT,
    c_codiclien VARCHAR(10),
    c_nomeclien VARCHAR(100),
    c_razaclien VARCHAR(100),
    d_dataclien DATE,
    c_cnpjclien VARCHAR(20),
    c_foneclien VARCHAR(20),
    PRIMARY KEY (n_numuclien)
);

CREATE TABLE comforne (
    n_numeforne INT NOT NULL AUTO_INCREMENT,
    c_codiforne VARCHAR(10),
    c_nomeforne VARCHAR(100),
    c_razaforne VARCHAR(100),
    c_foneforne VARCHAR(20),
    PRIMARY KEY (n_numeforne)
);

CREATE TABLE comvende (
    n_numvende INT NOT NULL AUTO_INCREMENT,
    c_codivende VARCHAR(10),
    c_nomevende VARCHAR(100),
    c_razavende VARCHAR(100),
    c_fonevende VARCHAR(20),
    n_porcvende FLOAT(10,2),
    PRIMARY KEY (n_numvende)
);

CREATE TABLE comprodu (
    n_numeprodu INT NOT NULL AUTO_INCREMENT,
    c_codiprodu VARCHAR(20),
    c_descprodu VARCHAR(100),
    n_valoprodu FLOAT(10,2),
    c_situprodu VARCHAR(1),
    n_numeforne INT,
    PRIMARY KEY (n_numeprodu)
);

CREATE TABLE comvenda (
    n_numevenda INT NOT NULL AUTO_INCREMENT,
    c_codivenda VARCHAR(10),
    n_numuclien INT NOT NULL,
    n_numeforne INT NOT NULL,
    n_numvende INT NOT NULL,
    n_valovenda FLOAT(10,2),
    n_descvenda FLOAT(10,2),
    n_totavenda FLOAT(10,2),
    d_datavenda DATE,
    PRIMARY KEY (n_numevenda)
);

CREATE TABLE comivenda (
    n_numeivenda INT NOT NULL AUTO_INCREMENT,
    n_numevenda INT NOT NULL,
    n_numeprodu INT NOT NULL,
    n_valoivenda FLOAT(10,2),
    n_qtdeivenda INT,
    n_descivenda FLOAT(10,2),
    PRIMARY KEY (n_numeivenda)
);

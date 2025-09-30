CREATE DATABASE ConsultorioMedicoRede;
use ConsultorioMedicoRede;

CREATE TABLE medicos(
	medico_ID INT auto_increment primary key,
    CRM int not null unique,
    nome varchar(50) not null,
	especialidade_ID INT NOT NULL,
    clinica_ID INT NOT NULL,
    
    FOREIGN KEY (especialidade_ID) REFERENCES especialidades(especialidade_ID),
    FOREIGN KEY (clinica_ID) REFERENCES clinicas(clinica_ID)
);

CREATE TABLE pacientes(
	paciente_ID int auto_increment primary key,
    nome varchar(50) not null,
    cpf varchar(14) not null unique,
    telefone varchar(17) not null unique,
    dataNasc date not null,
    cidade varchar(50) not null
);

CREATE TABLE consultas(
	consulta_ID int auto_increment primary key,
    paciente_ID int,
    medico_ID int,
    tipoConsulta varchar(100) not null,
    dataConsulta date not null,
    statusConsulta ENUM('Agendado', 'Realizada', 'Cancelada') default 'Agendado',
    observacoes TEXT,
    
	foreign key (paciente_ID) references pacientes(paciente_ID),
    foreign key (medico_ID) references medicos(medico_ID)
);


CREATE TABLE especialidades(
	especialidade_ID int auto_increment primary key,
	nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE clinicas(
	clinica_ID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    endereco VARCHAR(200) NOT NULL
);




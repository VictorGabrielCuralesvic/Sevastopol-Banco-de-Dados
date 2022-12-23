create database sevastopol;

use sevastopol;

create table Espaçonave (
	IdEspaçonave int,
    IdCompartimento int,
    Modelo_Espaçonave varchar(50),
    primary key (IdEspaçonave)
);

create table Central_Estação (
	CorId varchar(50),
  	Centrais varchar(50),
  	primary key (CorId)
);

create table Tripulante (
	IdTripulante int,
    CorId varchar(50),
    IdEspaçonave int,
	IdAlojamento int not null,
    Função varchar(50) not null,
    primary key (IdTripulante),
    foreign key (IdEspaçonave) references Espaçonave(IdEspaçonave),
  	foreign key (CorId) references Central_Estação(CorId)
);

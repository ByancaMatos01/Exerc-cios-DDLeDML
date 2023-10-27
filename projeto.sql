Drop database projeto 
use master

create database projeto 
use projeto  
GO
create table Projects(
id                int          not null   identity (10001,1),
nome              varchar(45)  not null,
descricao         varchar(45),
Datas              date               check (Datas >='2014-09-01')
primary key (id)
)
GO
create table users(
id                 int             not null                           identity (1,1),
nome               varchar(45)     not null                                               ,
username           varchar(45)     not null                           unique,
passwords          varchar(45)     not null                           default('123mudar'),
email              varchar(45)     not null
primary key (id),

)
GO
create table user_has_projects(
id_users           int             not null,
id_projects        int             not null
FOREIGN KEY(id_users) references users(id),
FOREIGN KEY(id_projects) references projects(id)
)
GO

ALTER TABLE users
DROP CONSTRAINT UQ__users__F3DBC5722B531E67;

ALTER TABLE users
ALTER COLUMN username VARCHAR(10) NOT NULL;

ALTER TABLE users
ALTER COLUMN passwords VARCHAR(08) NOT NULL

INSERT INTO users(nome,username,email)
VALUES('Maria', 'RH_maria','maria@empresa.com')

INSERT INTO users(nome,username,passwords, email)
VALUES('Paulo', 'TI_PAULO','123@456','paulo@empresa.com')
go
INSERT INTO users(nome,username,email)
VALUES('Ana', 'RH_ana','ana@empresa.com')
go
INSERT INTO users(nome,username,email)
VALUES('Clara', 'TI_clara','clara@empresa.com')
go
INSERT INTO users(nome,username,passwords, email)
VALUES('Aparecido', 'RH_apareci','55@!cido','aparecido@empresa.com')

ALTER TABLE Projects
DROP CONSTRAINT CK__Projects__Datas__36B12243;
ALTER TABLE Projects
ADD CHECK (Datas >= '2014-09-05');

INSERT INTO Projects(nome,descricao,Datas)
VALUES('RE-folha', 'Refatoração das folhas','2014-09-05')

INSERT INTO Projects(nome,descricao,Datas)
VALUES('Manutençao PC´S', 'Manutenção de PC´S','2014-09-06')
go

INSERT INTO Projects(nome,Datas)
VALUES('Auditória','2014-09-07')
go

INSERT INTO user_has_projects(id_users,id_projects)
VALUES(1,10001)
go
INSERT INTO user_has_projects(id_users,id_projects)
VALUES(5,10001)
go
INSERT INTO user_has_projects(id_users,id_projects)
VALUES(3,10003)
go
INSERT INTO user_has_projects(id_users,id_projects)
VALUES(4,10002)
go
INSERT INTO user_has_projects(id_users,id_projects)
VALUES(2,10002)

go

select* from users
EXEC sp_help users

Update Projects
set Datas='2014-09-12'
where nome LIKE 'Manutençao%'

UPDATE users
set username= 'RH_cido'
where nome like 'Aparecido'

Update users
set passwords= '888@*'
where nome like 'Maria' and username='RH_maria' and passwords='123mudar'

DELETE user_has_projects WHERE id_users = 2 AND id_projects = 10002

select*from Projects
select*from users
select*from user_has_projects


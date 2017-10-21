select *
from Maestro

Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (1111111, 1111112, 'Eleazar', 'Fuentes Oaxaca', '10-10-86')
Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (1111122, 1111123, 'Guillermo', 'S�nchez M.', '11-11-85')
Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (1111133, 1111134, 'Romeo', 'A. S�nchez', '10-10-84')
Insert into Maestro(IdMaestro, IdUsuario, NomMaestro, Apellidos, FechaNac)
values (1111144, 1111145, 'Yenny', 'Rivera', '08-10-80')

Update Maestro set NomMaestro = 'Edgar' 
where IdMaestro = '1111144'
delete from Maestro
where IdMaestro = '1111144'

Select *
from Titulo

Insert into Titulo(IdTitulo, nomTitulo)
values(2222222, 'Lic. Ciencias Computacionales')
Insert into Titulo(IdTitulo, nomTitulo)
values(2222223, 'Ing. Industrial Administrador')
Insert into Titulo(IdTitulo, nomTitulo)
values(2222224, 'Lic. Multimedia Animacion Digital')
Insert into Titulo(IdTitulo, nomTitulo)
values(2222225, 'Lic. Agronomia')

Update Titulo set nomTitulo = 'Lic. Biotecnologia'
where IdTitulo = '2222224'
delete from Titulo
where IdTitulo = '2222225'

Select *
from Maestro_Titulo

Insert into Maestro_Titulo(IdMaestro, IdTitulo)
values('1111111','2222222')
Insert into Maestro_Titulo(IdMaestro, IdTitulo)
values('1111122','2222223')
Insert into Maestro_Titulo(IdMaestro, IdTitulo)
values('1111133','2222224')

Select *
from Materia

Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (3333333, 4444444, 'Calculo Diferencial', '8', '4', 8)
Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (3333334, 4444445, 'Calculo Integral', '10', '4', 5)
Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (3333335, 4444446, 'Base de Datos', '11', '1', 4)
Insert into Materia(IdMateria, IdCarrera, MatNom, MatCred, NumFrecuencia, NumSemestre)
values (3333336, 4444447, 'Algebra', '9', '2', 3)

Update Materia set NumFrecuencia = '6'
where IdMateria = '3333334'
delete from Materia
where IdMateria = '3333336'

Select *
from Materia_Maestro

Insert into Materia_Maestro(IdMateriaMaestro, IdMateria, IdMaestro)
values(5555555, '3333333', '1111111')
Insert into Materia_Maestro(IdMateriaMaestro, IdMateria, IdMaestro)
values(5555556, '3333334', '1111122')
Insert into Materia_Maestro(IdMateriaMaestro, IdMateria, IdMaestro)
values(5555557, '3333335', '1111133')

Select *
from Grupo

Insert into Grupo(IdGrupo, IdSalon, IdTurmo)
values(6666666, '7777777','M')
Insert into Grupo(IdGrupo, IdSalon, IdTurmo)
values(6666667, '7777778','N')
Insert into Grupo(IdGrupo, IdSalon, IdTurmo)
values(6666668, '7777779','V')

Select *
from Grupo_Materia

Insert into Grupo_Materia(IdGrupoMateria, IdMateriaMaestro, IdGrupo, Hora, NumSemestre)
values(8888888, '5555555', '6666666', '23:00','4')
Insert into Grupo_Materia(IdGrupoMateria, IdMateriaMaestro, IdGrupo, Hora, NumSemestre)
values(8888889, '5555556', '6666667', '20:00','3')
Insert into Grupo_Materia(IdGrupoMateria, IdMateriaMaestro, IdGrupo, Hora, NumSemestre)
values(8888881, '5555557', '6666668', '18:00','4')

update Grupo_Materia set Hora = '16:00'
where IdGrupoMateria = '8888881'

Select *
from Salon

Insert into Salon (IdSalon, Capacidad)
values(7777777, '50')
Insert into Salon (IdSalon, Capacidad)
values(7777778, '48')
Insert into Salon (IdSalon, Capacidad)
values(7777779, '39')
Insert into Salon (IdSalon, Capacidad)
values(7777771, '35')

Update Salon set Capacidad = '55' 
where IdSalon = '7777777'
Update Salon set Capacidad = '40' 
where IdSalon = '7777778'
delete from Salon
where IdSalon = '7777771'

Select *
from Turno

Insert into Turno(IdTurno, TipoTurno)
values('M', 'm')
Insert into Turno(IdTurno, TipoTurno)
values('V', 'v')
Insert into Turno(IdTurno, TipoTurno)
values('N', 'n')
Insert into Turno(IdTurno, TipoTurno)
values('T', 't')

delete from Turno
where IdTurno = 'T'


select *
from Maestro, Titulo, Maestro_Titulo, Grupo, Grupo_Materia, Turno, Salon


--1.-Select con group by, 2.- 2 selects con 1 columna, y 3 funciones agregadas, 3.- igual al dos pero con where, 4.- como el 3 pero con having, 5.- Select TOP 

--Group by
Select Maestro.NomMaestro
from Maestro
group by Maestro.NomMaestro 
order by Maestro.NomMaestro desc

--Funciones
Select Count(Salon.Capacidad) as 'Cuantos Caben', MAX(Salon.Capacidad) as 'Maximo Alcance', SUM(Salon.Capacidad) as 'Total'
from Salon
group by Salon.Capacidad

Select Count(Materia.NumSemestre) as 'Cuantos Caben', MAX(Materia.NumSemestre) as 'Maximo Alcance', Min(Salon.Capacidad) as 'Capacidad requerida'
from Materia, Salon
group by Materia.NumSemestre, Salon.Capacidad

--Having
Select Count(Salon.Capacidad) as 'Cuantos Caben', MAX(Salon.Capacidad) as 'Maximo Alcance', SUM(Salon.Capacidad) as 'Total'
from Salon
group by Salon.Capacidad
Having Max(Salon.Capacidad) > 40

Select Count(Salon.Capacidad) as 'Cuantos Caben', MAX(Salon.Capacidad) as 'Maximo Alcance', SUM(Salon.Capacidad) as 'Total'
from Salon
group by Salon.Capacidad
Having MIN(Salon.Capacidad) < 55

--Where
Select Count(Grupo_Materia.NumSemestre) as 'Cuantos', MAX(Grupo_Materia.NumSemestre) as 'Maximo', SUM(Grupo_Materia.NumSemestre) as 'Sumatoria'
from Grupo_Materia
Where NumSemestre = 4 and IdGrupo = 6666666 

Select Count(Materia.MatCred) as 'Cuantos', MAX(Materia.MatCred) as 'Maximos Creditos', SUM(Materia.MatCred) as 'En total'
from Materia
Where IdMateria > 3333333

--TOP
Select TOP 2 Salon.Capacidad
from Salon
group by Salon.Capacidad
order by Salon.Capacidad asc

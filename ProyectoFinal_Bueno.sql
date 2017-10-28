-----------------------------Usuario-----------------------------
select*from Usuario
---Usuario-Alumno----
insert into Usuario values (1667093, 'SofiaA', 'piedequeso21')

insert into Usuario values (1661464, 'Gran-H', 'lagazo')

insert into Usuario values (1639523, 'Valeria', 'piedequeso21')

insert into Usuario values (1728659, 'Edgar_A', 'Lol')

---Usuario-Maestro----
insert into Usuario values (1777777,  'Mari', 'queso21')

insert into Usuario values (2777777,  'Manu', 'queso22')

insert into Usuario values (3777777,  'EdgarG', 'queso23')

insert into Usuario values (4777777,  'HectorN', 'queso24')

insert into Usuario values (5777777,  'AngelicaG', 'queso25')

insert into Usuario values (6777777,  'Sergio2854', 'queso26')

--------------------------------Alumno-----------------------------
select*from Alumno

insert into Alumno values (1667093, 'Sofia',20,'07-10-1997','A',1667093)

insert into Alumno values(1661464, 'Hector',20,'02-01-1994','A',1661464)

insert into Alumno values(1639523,'Valeria',23,'06-09-1994','A',1639523)

--------------------------------Nivel------------------------------
select*from Nivel

insert into Nivel values (11111, 'Licenciatura')

insert into Nivel values (11112, 'Maestria')

insert into Nivel values (11113, 'Doctorado')

--------------------------------Carrera-----------------------------
select*from Carrera

insert into Carrera values (22221, 11111, 'Seguridad en Tecnologias de Información', 8, 'A')

insert into Carrera values (22222, 11112, 'Matemáticas', 9, 'A')

insert into Carrera values (22223, 11113, 'Ciencias Computacionales', 8, 'A')

---------------------------------Materia----------------------------
select*from Materia
---Materia-Licenciatura----
insert into Materia values (33331, 22221, 'Circuitos Digitales', 3, 3 , 2) 

insert into Materia values (33332, 22221, 'Base de Datos', 2, 3 , 3)

insert into Materia values (33333, 22221, 'Evidencias Digitales', 3, 3 , 2)

insert into Materia values (33334, 22221, 'Normatividad y Regulaciones', 3, 3 , 1)
---Materia-Maestria----
insert into Materia values (33335, 22222, 'Cálculo Diferencial', 5, 5 , 1)

insert into Materia values (33336, 22222, 'Cálculo Integral', 4, 5 , 2)

insert into Materia values (33337, 22222, 'Cálculo de Varias Variables', 4, 5 , 3)

insert into Materia values (33338, 22222, 'Álgebra', 4, 5 , 1)
---Materia-Doctorado----
insert into Materia values (33339, 22223, 'Administración', 2, 3 , 1)

insert into Materia values (33340, 22223, 'Programación 1', 4, 3 , 2)

insert into Materia values (33341, 22223, 'Teoria de Automatas', 4, 3, 3)

insert into Materia values (33342, 22223, 'Matemáticas 1', 4, 3 , 1)

---------------------------------Maestro------------------------------
select*from Maestro

insert into Maestro values (44441, 1777777, 'Marilu', 'Rojas Ramírez', '05-05-1965')

insert into Maestro values (44442, 2777777, 'Manuel', 'Pecina García', '08-12-1967')

insert into Maestro values (44443, 3777777, 'Edgar Ivan', 'Neira Garza', '10-18-1978')

insert into Maestro values (44444, 4777777, 'Hector', 'Neira Rosales', '03-14-1990')

insert into Maestro values (44445, 5777777, 'Patricia Angelica', 'Garza Álvarez', '03-07-1979')

insert into Maestro values (44446, 6777777, 'Sergio Yahir', 'Martínez Palma', '02-27-1955')

-------------------------------Materia_Maestro------------------------
select*from Materia_Maestro

insert into Materia_Maestro values (55551, 33331,44441)

insert into Materia_Maestro values (55552, 33333,44441)

insert into Materia_Maestro values (55553, 33332,44442)

insert into Materia_Maestro values (55554, 33334,44442)

insert into Materia_Maestro values (55555, 33335,44443)

insert into Materia_Maestro values (55556, 33337,44443)

insert into Materia_Maestro values (55557, 33336,44444)

insert into Materia_Maestro values (55558, 33338,44444)

insert into Materia_Maestro values (55559, 33339,44445)

insert into Materia_Maestro values (55560, 33341,44445)

insert into Materia_Maestro values (55561, 33340,44446)

insert into Materia_Maestro values (55562, 33342,44446)

-----------------------Turno-------------------------------------
select*from Turno

insert into Turno values ('m', 'M')

insert into Turno values ('v', 'V')

insert into Turno values ('n', 'N')

------------------------Salon-----------------------------------
select*from Salon

insert into Salon values (66661, 30)

insert into Salon values (66662, 25)

insert into Salon values (66663, 39)

-----------------------Grupo--------------------------------------
select*from Grupo

insert into Grupo values (00001, 66661,'m')

insert into Grupo values (00002, 66661,'v')

insert into Grupo values (00003, 66661,'n')

insert into Grupo values (00004, 66661,'m')

insert into Grupo values (00005, 66662,'v')

insert into Grupo values (00006, 66662,'n')

insert into Grupo values (00007, 66662,'m')

insert into Grupo values (00008, 66662,'v')

insert into Grupo values (00009, 66663,'n')

insert into Grupo values (00010, 66663,'m')

insert into Grupo values (00011, 66663,'v')

insert into Grupo values (00012, 66663,'n')

-----------------------Grupo_Materia------------------------------
select*from Grupo_Materia

insert into Grupo_Materia values (77771, 55551, 00001, '07:00:00.00', '08:00:00.00') 

insert into Grupo_Materia values (77772, 55552, 00002, '13:00:00.00', '14:00:00.00') 

insert into Grupo_Materia values (77773, 55553, 00003, '18:00:00.00', '19:00:00.00') 

insert into Grupo_Materia values (77774, 55554, 00004, '08:00:00.00', '09:00:00.00') 

insert into Grupo_Materia values (77775, 55555, 00005, '14:00:00.00', '15:00:00.00') 

insert into Grupo_Materia values (77776, 55556, 00006, '19:00:00.00', '20:00:00.00') 

insert into Grupo_Materia values (77777, 55557, 00007, '09:00:00.00', '10:00:00.00') 

insert into Grupo_Materia values (77778, 55558, 00008, '15:00:00.00', '16:00:00.00') 

insert into Grupo_Materia values (77779, 55559, 00009, '20:00:00.00', '21:00:00.00') 

insert into Grupo_Materia values (77780, 55560, 00010, '10:00:00.00', '11:00:00.00') 

insert into Grupo_Materia values (77781, 55561, 00011, '16:00:00.00', '17:00:00.00') 

insert into Grupo_Materia values (77782, 55562, 00012, '21:00:00.00', '22:00:00.00')

------------------------Grupo_Alumno------------------------------
select*from Grupo_Alumno

 insert into Grupo_Alumno values (88881, 77771, 1667093)
 
 insert into Grupo_Alumno values (88882, 77772, 1667093)
 
 insert into Grupo_Alumno values (88883, 77773, 1667093)
 
 insert into Grupo_Alumno values (88884, 77774, 1667093)
 
 insert into Grupo_Alumno values (88885, 77775, 1661464)
 
 insert into Grupo_Alumno values (88886, 77776, 1661464)
 
 insert into Grupo_Alumno values (88887, 77777, 1661464)
 
 insert into Grupo_Alumno values (88888, 77778, 1661464)
 
 insert into Grupo_Alumno values (88889, 77779, 1639523)
 
 insert into Grupo_Alumno values (88890, 77780, 1639523)
 
 insert into Grupo_Alumno values (88891, 77781, 1639523)
 
 insert into Grupo_Alumno values (88892, 77782, 1639523)
 

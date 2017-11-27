# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Brandon", lastname1: "Reyes", lastname2: "Minero", email: "admin@hotmail.com", password: "prueba", tipo: "Administrador")

User.create(name: "Luis", lastname1: "Lucatero", lastname2: "Villanueva", email: "jefe@hotmail.com", password: "prueba", tipo: "Jefe de departamento")

User.create(name: "Eli", lastname1: "Rodriguez", lastname2: "Fallas", email: "medico@hotmail.com", password: "prueba", tipo: "Medico")

User.create(name: "Dafne", lastname1: "Lecona", lastname2: "Cisneros", email: "enfermera@hotmail.com", password: "prueba", tipo: "Enfermera")

User.create(name: "Lety", lastname1: "Padilla", lastname2: "Perez", email: "enfermera2@hotmail.com", password: "prueba", tipo: "Enfermera")

Paciente.create(name: "Ivan", lastname1: "Islas", lastname2: "Juarez", padecimiento: "Pie roto", fechaIngreso: 2017-10-26, sexo: "Masculino", observaciones: "Pie muy roto", fechaDeNacimiento: 1995-11-26) 

Paciente.create(name: "Karla", lastname1: "Robledo", lastname2: "Bandala", padecimiento: "Neurotica", fechaIngreso: 2017-10-15, sexo: "Femenino", observaciones: "Alusinaciones", fechaDeNacimiento: 1997-11-26) 



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

student1 = Student.create(name: "Steven Universe")
student2 = Student.create(name: "Nick's Evil Twin Brother")

clinic1 = Clinic.create(name: "Big U Notation", speaker: "Rick", description: "The universe is infinitly complex")
clinic2 = Clinic.create(name: "How to Sleep for Programmers", speaker: "Jenn", description: "don't listen to Nick")

r1 = Comment.create(clinic: clinic2, asker: "Birdperson", body: "Birdperson disagrees")
r2 = Comment.create(clinic: clinic2, asker: "Nick", body: "(╯°□°)╯︵ ┻━┻")

Signup.create(student: student1, clinic: clinic2)
Signup.create(student: student1, clinic: clinic1)

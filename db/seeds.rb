# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Teacher.destroy_all

student = Student.create(name: 'Kelly Jones', number: '123-456-7891', email: 'kjones@jones.COM')
teacher = Teacher.create(name: 'Mrs.Green', email: 'green@green.com', date: DateTime.now, message: 'some message', student_id: student.id)

student = Student.create(name: 'Blue Lee', number: '222-456-7891', email: 'blue@blue.COM')
teacher = Teacher.create(name: 'Mr.JIMMY', email: 'jimmy@DER.COM', date: DateTime.now, message: 'some message', student_id: student.id)

student = Student.create(name: 'Kim Gems', number: '333-456-7891', email: 'kim@DER.COM')
teacher = Teacher.create(name: 'Mr.MICKEY', email: 'AB8C@DER.COM', date: DateTime.now, message: 'some message', student_id: student.id)



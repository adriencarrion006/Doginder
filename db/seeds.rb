# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Match.destroy_all
DogInterest.destroy_all
Dog.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
user = User.create!(email:"super@gmail.com", password:"lechien")
user2 = User.create!(email:"titi@gmail.com", password:"lechien")
dogs = Dog.create!(user_id: user.id, name: "rex", breed:"berger allemand", description:"il fouille partout",location_cp:"06130")
dogs1 = Dog.create!(user_id: user.id, name: "lassie", breed:"border colier", description:"super gentille",location_cp:"06400")
dogs2 = Dog.create!(user_id: user.id, name: "Beethoven", breed:"Saint-Bernard", description:"il mange trop de croquettes",location_cp:"06200")
dogs3 = Dog.create!(user_id: user.id, name: "Rantanplan", breed:"berger allemand et lévrier", description:"trés fidéle",location_cp:"06400")
dogs4 = Dog.create!(user_id: user.id, name: "Croc-Blanc", breed:"loup", description:"il aime jouer dans la neige",location_cp:"06300")

Chatrooms = Chatroom.create!(recipient: user.id, sender: user2.id)

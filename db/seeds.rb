# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Match.destroy_all
DogInterest.destroy_all
Dog.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
user = User.create!(email:"super@gmail.com", password:"lechien")
user2 = User.create!(email:"titi@gmail.com", password:"lechien")
dogs = Dog.create!(user_id: user.id, name: "rex", breed:"berger allemand", description:"il fouille partout",location_cp:"06130")
photo1 = URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655735608/rex3_ghqkuw.jpg")
dogs.photos.attach(io: photo1, filename: "rex3.jpg", content_type: "image/jpg")
dogs.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655735601/rex2_ary3pg.jpg"), filename: "rex2.jpg", content_type: "image/jpg")
dogs.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655735586/rex_tacccj.jpg"), filename: "rex.jpg", content_type: "image/jpg")

dogs1 = Dog.create!(user_id: user.id, name: "lassie", breed:"border colier", description:"super gentille",location_cp:"06400")
dogs1.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736985/lassie_uwonum.jpg"), filename: "lassie.jpg", content_type: "image/jpg")
dogs1.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736985/lassie2_mgtcws.jpg"), filename: "lassi2.jpg", content_type: "image/jpg")
dogs1.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/lassie3_ebumgj.jpg"), filename: "lassie3.jpg", content_type: "image/jpg")

dogs2 = Dog.create!(user_id: user.id, name: "Beethoven", breed:"Saint-Bernard", description:"il mange trop de croquettes",location_cp:"06200")
dogs2.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/beethoven_a5kcdk.jpg"), filename: "beethoven.jpg", content_type: "image/jpg")
dogs2.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736987/beethoven2_ytavk9.jpg"), filename: "beethoven2.jpg", content_type: "image/jpg")
dogs2.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736985/beethoven3_nqp7pr.jpg"), filename: "beethoven3.jpg", content_type: "image/jpg")

dogs3 = Dog.create!(user_id: user.id, name: "Rantanplan", breed:"malinoi", description:"trés fidéle",location_cp:"06400")
dogs3.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/malinoi_drwzxe.jpg"), filename: "malinoi.jpg", content_type: "image/jpg")
dogs3.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/malinoi2_yplel0.jpg"), filename: "malinoi2.jpg", content_type: "image/jpg")
dogs3.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/malinoi3_c6wknj.jpg"), filename: "malinoi3.jpg", content_type: "image/jpg")

dogs4 = Dog.create!(user_id: user.id, name: "Croc-Blanc", breed:"loup", description:"il aime jouer dans la neige",location_cp:"06300")
dogs4.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/loup_ggydjv.jpg"), filename: "loup.jpg", content_type: "image/jpg")
dogs4.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/loup2_zdwzfe.webp"), filename: "loup2.jpg", content_type: "image/jpg")
dogs4.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/loup3_rradl7.jpg"), filename: "loup3.jpg", content_type: "image/jpg")

Chatrooms = Chatroom.create!(recipient: user.id, sender: user2.id)

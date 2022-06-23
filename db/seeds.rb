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
user1 = User.create!(email:"super@gmail.com", password:"lechien", pseudo: "Carlou", first_name: "Carla", last_name: "BAUDOIN", image_avatar: "Carla.jpg", description: "je suis jeune, dynamique et drôle")
user2 = User.create!(email:"titi@gmail.com", password:"lechien",pseudo: "Lolo", first_name: "Laura", last_name: "ALBAN", image_avatar: "Laura.jpg", description: "Je suis curieuse et sportive")
user3 = User.create!(email:"miss@gmail.com", password:"lechien", pseudo: "Marinette", first_name: "Marine", last_name: "PITERIA", image_avatar: "Marine.jpg", description: "Je suis toujours de bon nhumeur")
user4 = User.create!(email:"seb@gmail.com", password:"lechien", pseudo: "Sebeau", first_name: "Sebastien", last_name: "CAGNOL", image_avatar: "Sebastien.jpg", description: "Je suis sympathique")
user5 = User.create!(email:"david@gmail.com", password:"lechien", pseudo: "dada", first_name: "David", last_name: "CLOIRET", image_avatar: "David.jpg", description: "Je suis drôle et j'aime les échecs")

user6 = User.create!(email:"a@gmail.com", password:"lechien", pseudo: "Carlou", first_name: "Carla", last_name: "BAUDOIN", image_avatar: "Carla.jpg", description: "je suis jeune, dynamique et drôle")
user7 = User.create!(email:"b@gmail.com", password:"lechien",pseudo: "Lolo", first_name: "Laura", last_name: "ALBAN", image_avatar: "Laura.jpg", description: "Je suis curieuse et sportive")
user8 = User.create!(email:"c@gmail.com", password:"lechien", pseudo: "Marinette", first_name: "Marine", last_name: "PITERIA", image_avatar: "Marine.jpg", description: "Je suis toujours de bon nhumeur")
user9 = User.create!(email:"d@gmail.com", password:"lechien", pseudo: "Sebeau", first_name: "Sebastien", last_name: "CAGNOL", image_avatar: "Sebastien.jpg", description: "Je suis sympathique")
user10 = User.create!(email:"e@gmail.com", password:"lechien", pseudo: "dada", first_name: "David", last_name: "CLOIRET", image_avatar: "David.jpg", description: "Je suis drôle et j'aime les échecs")

user11 = User.create!(email:"f@gmail.com", password:"lechien", pseudo: "Carlou", first_name: "Carla", last_name: "BAUDOIN", image_avatar: "Carla.jpg", description: "je suis jeune, dynamique et drôle")
user12 = User.create!(email:"g@gmail.com", password:"lechien",pseudo: "Lolo", first_name: "Laura", last_name: "ALBAN", image_avatar: "Laura.jpg", description: "Je suis curieuse et sportive")
user13 = User.create!(email:"h@gmail.com", password:"lechien", pseudo: "Marinette", first_name: "Marine", last_name: "PITERIA", image_avatar: "Marine.jpg", description: "Je suis toujours de bon nhumeur")
user14 = User.create!(email:"i@gmail.com", password:"lechien", pseudo: "Sebeau", first_name: "Sebastien", last_name: "CAGNOL", image_avatar: "Sebastien.jpg", description: "Je suis sympathique")
user15 = User.create!(email:"z@gmail.com", password:"lechien", pseudo: "dada", first_name: "David", last_name: "CLOIRET", image_avatar: "David.jpg", description: "Je suis drôle et j'aime les échecs")

user16 = User.create!(email:"j@gmail.com", password:"lechien", pseudo: "Carlou", first_name: "Carla", last_name: "BAUDOIN", image_avatar: "Carla.jpg", description: "je suis jeune, dynamique et drôle")
user17 = User.create!(email:"k@gmail.com", password:"lechien",pseudo: "Lolo", first_name: "Laura", last_name: "ALBAN", image_avatar: "Laura.jpg", description: "Je suis curieuse et sportive")
user18 = User.create!(email:"l@gmail.com", password:"lechien", pseudo: "Marinette", first_name: "Marine", last_name: "PITERIA", image_avatar: "Marine.jpg", description: "Je suis toujours de bon nhumeur")
user19 = User.create!(email:"m@gmail.com", password:"lechien", pseudo: "Sebeau", first_name: "Sebastien", last_name: "CAGNOL", image_avatar: "Sebastien.jpg", description: "Je suis sympathique")



dogs = Dog.create!(user_id: user1.id, name: "rex", breed:"berger allemand", centre_interet:"manger", description:"il fouille partout",location_cp:"06400")
photo1 = URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655735608/rex3_ghqkuw.jpg")
dogs.photos.attach(io: photo1, filename: "rex3.jpg", content_type: "image/jpg")
dogs.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655735601/rex2_ary3pg.jpg"), filename: "rex2.jpg", content_type: "image/jpg")
dogs.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655735586/rex_tacccj.jpg"), filename: "rex.jpg", content_type: "image/jpg")

dogs1 = Dog.create!(user_id: user2.id, name: "lassie", breed:"border colier", centre_interet:"manger", description:"super gentille",location_cp:"06100")
dogs1.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736985/lassie_uwonum.jpg"), filename: "lassie.jpg", content_type: "image/jpg")
dogs1.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736985/lassie2_mgtcws.jpg"), filename: "lassi2.jpg", content_type: "image/jpg")
dogs1.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/lassie3_ebumgj.jpg"), filename: "lassie3.jpg", content_type: "image/jpg")

dogs2 = Dog.create!(user_id: user3.id, name: "Beethoven", breed:"Saint-Bernard", centre_interet:"manger", description:"il mange trop de croquettes",location_cp:"06400")
dogs2.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/beethoven_a5kcdk.jpg"), filename: "beethoven.jpg", content_type: "image/jpg")
dogs2.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736987/beethoven2_ytavk9.jpg"), filename: "beethoven2.jpg", content_type: "image/jpg")
dogs2.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736985/beethoven3_nqp7pr.jpg"), filename: "beethoven3.jpg", content_type: "image/jpg")

dogs3 = Dog.create!(user_id: user4.id, name: "Rantanplan", breed:"malinoi", centre_interet:"Courir en montagne", description:"trés fidéle",location_cp:"06100")
dogs3.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/malinoi_drwzxe.jpg"), filename: "malinoi.jpg", content_type: "image/jpg")
dogs3.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/malinoi2_yplel0.jpg"), filename: "malinoi2.jpg", content_type: "image/jpg")
dogs3.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/malinoi3_c6wknj.jpg"), filename: "malinoi3.jpg", content_type: "image/jpg")

dogs4 = Dog.create!(user_id: user5.id, name: "Croc-Blanc", breed:"loup", centre_interet:"Faire la sieste", description:"il aime jouer dans la neige",location_cp:"06400")
dogs4.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/loup_ggydjv.jpg"), filename: "loup.jpg", content_type: "image/jpg")
dogs4.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/loup2_zdwzfe.webp"), filename: "loup2.jpg", content_type: "image/jpg")
dogs4.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655736986/loup3_rradl7.jpg"), filename: "loup3.jpg", content_type: "image/jpg")

dogs5 = Dog.create!(user_id: user6.id, name: "Bella-Chao", breed:"loupHusky siberien", centre_interet:"Creuser des trous", description:"Elle porte bien son nom, Bella est très belle mais aussi très gentille et joueuse.",location_cp:"06400")
dogs5.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655816890/bella-chao1_wiswlg.jpg"), filename: "bella-chao1.jpg", content_type: "image/jpg")
dogs5.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655816890/bella-chao2_ihibgs.jpg"),  filename: "bella-chao2.jpg", content_type: "image/jpg")
dogs5.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655816890/bella-chao3_hqdec6.jpg"), filename: "bella-chao3.jpg", content_type: "image/jpg")

dogs6 = Dog.create!(user_id: user7.id, name: "Caramel", breed:"Bouledogue Américain", centre_interet:"Chasser les chats", description:"Caramel est un grand garçon, tout en force !
c'est un chien qui devra sortir avec d’autres animaux.
",location_cp:"06400")
dogs6.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817236/caramel-3_fbupqj.jpg"), filename: "caramel-1.jpg", content_type: "image/jpg")
dogs6.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817236/caramel-1_e5xe5i.jpg"), filename: "caramel-2.jpg", content_type: "image/jpg")
dogs6.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817236/caramel-2_ziowfe.jpg"), filename: "caramel-3.jpg", content_type: "image/jpg")

dogs7 = Dog.create!(user_id: user8.id, name: "Cricket", breed:"Croisé / Autre", centre_interet:"Ronger mon nonos", description:"Cricket est un chien qui peut se montrer un peu timide au départ et assez câlin une fois qu'il connait.
C'est un loulou très intelligent qui apprend vite.
Il est très dynamique et aura besoin d'une grosse dépense physique et mental.
",location_cp:"06400")
dogs7.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817399/cricket-2_qzl7ps.jpg"), filename: "Cricket1.jpg", content_type: "image/jpg")
dogs7.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817399/Cricket1_znh2kt.jpg"), filename: "Cricket-2.jpg", content_type: "image/jpg")
dogs7.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817399/cricket-3_xhsdbn.jpg"), filename: "Cricket-3.jpg", content_type: "image/jpg")

dogs8 = Dog.create!(user_id: user9.id, name: "Ewelina", breed:"Berger", centre_interet:"Jouer à la baballe", description:"Ewelina est une chienne sensible",location_cp:"06400")
dogs8.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817493/ewelina-3_vowa8n.jpg"), filename: "ewelina-1.jpg", content_type: "image/jpg")
dogs8.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817493/ewelina-1_r7xh5b.jpg"), filename: "ewelina-2.jpg", content_type: "image/jpg")
dogs8.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817493/ewelina-2_dh2dhd.jpg"), filename: "ewelina-3.jpg", content_type: "image/jpg")

dogs9 = Dog.create!(user_id: user2.id, name: "Harlem", breed:"loup", centre_interet:"Canicross", description:"Harlem se montre très proche de l'humain, câlin, en demande d'attention et hyper attendrissant.",location_cp:"06300")
dogs9.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817585/harlem-3_qm2myd.jpg"), filename: "harlem-1.jpg", content_type: "image/jpg")
dogs9.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817585/harlem-2_omfpjg.jpg"), filename: "harlem-2.jpg", content_type: "image/jpg")
dogs9.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817585/harlem-1_lkevkd.jpg"), filename: "harlem-3.jpg", content_type: "image/jpg")

dogs10 = Dog.create!(user_id: user10.id, name: "Hijo", breed:"croisé ", centre_interet:"Agility", description:"Hijo a énormément de mal à faire confiance aux humains. Craintif, méfiant, il aura besoin de temps et d'une approche très douce pour se révéler sous son vrai jour.
Un petit bonhomme extrêmement attachant, un petit cœur brisé qui attend d'être compris
",location_cp:"06400")
dogs10.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817707/hijo1_osfmed.jpg"), filename: "hijo1.jpg", content_type: "image/jpg")
dogs10.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817708/hijo3_wgyunj.jpg"), filename: "hijo2.jpg", content_type: "image/jpg")
dogs10.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817707/Hijo2_n8ocsz.jpg"), filename: "hijo3.jpg", content_type: "image/jpg")

dogs11 = Dog.create!(user_id: user11.id, name: "Jany", breed:"American staffordshire", centre_interet:"Suivre une piste", description:"Jany est un jeune chienne, dynamique et affectueuse.
On évitera la présence d’enfants et de chats. Il ne lui faudra pas trop de solitude.
Odéon est un Amstaff LOF, ce qui implique : port de la muselière, permis de détention, etc.
",location_cp:"06400")
dogs11.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817814/jany1_b06mpj.jpg"), filename: "jany1.jpg", content_type: "image/jpg")
dogs11.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817813/Jany2_levtmh.jpg"), filename: "jany2.jpg", content_type: "image/jpg")
dogs11.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817813/Jany3_tsdxbl.jpg"), filename: "jany3.jpg", content_type: "image/jpg")


dogs12 = Dog.create!(user_id: user12.id, name: "Lyse", breed:"Berger belge Malinois", centre_interet:"Attraper les méchants", description:"Lyse est une malinoise qui peut se montrer distante au début mais une fois en confiance, elle se montrera câline. Un apprentissage de la gestion des émotions en balade sera à faire car mademoiselle est réactive en laisse.",location_cp:"06300")
dogs12.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817905/lyse-1_ux5ojz.jpg"), filename: "lyse-1.jpg", content_type: "image/jpg")
dogs12.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817905/lyse-2_buchkw.jpg"), filename: "lyse-2.jpg", content_type: "image/jpg")
dogs12.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655817905/lyse-3_jazq2y.jpg"), filename: "lyse-3.jpg", content_type: "image/jpg")#Chatrooms = Chatroom.create!(recipient: user.id, sender: user2.id)

dogs13 = Dog.create!(user_id: user13.id, name: "Magnum", breed:"Drahthaar", centre_interet:"Mordre le facteur", description:"Magnum s'entend avec ses congénères mais il a ses têtes. Il ne s'entend pas avec les chats.
Si Magnum est un gentil loulou quand il se sent à l'aise il peut vite prendre peur en extérieur.
",location_cp:"06400")
dogs13 .photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818004/magnum1_sj91qe.jpg"), filename: "magnum1.jpg", content_type: "image/jpg")
dogs13 .photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818005/magnum2_mvr8xw.jpg"), filename: "magnum2.jpg", content_type: "image/jpg")
dogs13 .photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818004/magnum3_c774eb.jpg"), filename: "magnum3.jpg", content_type: "image/jpg")

dogs14 = Dog.create!(user_id: user14.id, name: "Nicky", breed:"Croisé / Dogue argentin", centre_interet:"Jouer au freesbee", description:"Nicky est un chien affectueux, qui aime son confort et qui a toujours envie d'apprendre et de faire plaisir.
Sociable avec certaines chiennes
",location_cp:"06400")
dogs14.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818144/niky-1_nyhi5b.jpg"), filename: "niky-1.jpg", content_type: "image/jpg")
dogs14.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818144/niky2_kkdcnq.jpg"), filename: "niky2.jpg", content_type: "image/jpg")
dogs14.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818146/niky3_a0x6s0.jpg"), filename: "niky3.jpg", content_type: "image/jpg")

dogs15 = Dog.create!(user_id: user15.id, name: "Odda", breed:"Braque", centre_interet:"chasser les mouches", description:"Odda est un chien très dynamique à qui il faudra apprendre à se canaliser en méthode positive. Il aura besoin d'être énormément dépensé, autant physiquement qu'intellectuellement, au risque de rencontrer des problèmes de comportement.",location_cp:"06400")
dogs15.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818261/odda-1_wxyaps.jpg"), filename: "odda-1.jpg", content_type: "image/jpg")
dogs15.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818260/odda-2_uwsvku.jpg"), filename: "odda-2.jpg", content_type: "image/jpg")
dogs15.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818261/odda-3_x6xfuo.jpg"), filename: "odda-3.jpg", content_type: "image/jpg")

dogs16 = Dog.create!(user_id: user16.id, name: "Romeo", breed:"Croisé / Fox terrier poil dur", centre_interet:"nager en riviere", description:"Roméo est un gentil petit loulou très joueur et affectueux !",location_cp:"06400")
dogs16.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818349/romeo-1_ot6pyn.jpg"), filename: "romeo-1.jpg", content_type: "image/jpg")
dogs16.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818350/romeo-2_dwc1hw.jpg"), filename: "romeo-2.jpg", content_type: "image/jpg")
dogs16.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818350/romeo-3_wxjee4.jpg"), filename: "romeo-3.jpg", content_type: "image/jpg")

dogs17 = Dog.create!(user_id: user17.id, name: "Titounet", breed:"Berger", centre_interet:"courir en montagne", description:"Titounet est un chien qui a encore beaucoup à apprendre. Très dynamique et joueur.",location_cp:"06400")
dogs17.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818465/titounet-1_ujt29u.jpg"), filename: "titounet-1.jpg", content_type: "image/jpg")
dogs17.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818465/titounet-2_r7uwng.jpg"), filename: "titounet-2.jpg", content_type: "image/jpg")
dogs17.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818465/titounet-3_njtw8o.jpg"), filename: "titounet-3.jpg", content_type: "image/jpg")

dogs18 = Dog.create!(user_id: user18.id, name: "Bayron", breed:"croisé", centre_interet:"se rouler dans l'herbe fraiche", description:"Bayron n'est pas un papy tranquille, il déborde encore d'énergie & devra pouvoir bénéficier d'une bonne dépense quotidienne, car monsieur à encore énormément d'énergie à revendre ",location_cp:"06300")
dogs18.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818584/bayron-1_tmbiet.jpg"), filename: "bayron-1.jpg", content_type: "image/jpg")
dogs18.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818584/bayron-2_eqn6tz.jpg"), filename: "bayron-2.jpg", content_type: "image/jpg")
dogs18.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818584/bayron-3_jn6qpy.jpg"), filename: "bayron-3.jpg", content_type: "image/jpg")

dogs19 = Dog.create!(user_id: user19.id, name: "Ninou", breed:"croisé", centre_interet:"mordre sa baballe", description:"Ce superbe chien (oui oui c'est une vraie beauté !) a connu de nombreux retours suite à de grosses incompréhensions, d'un naturel dynamique et nerveux, Ninou nécessitera des amis chiens sportifs et aptes à lui proposer une dépense mentale et physique quotidienne.",location_cp:"06300")
dogs19.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818677/ninou-1_ukdrra.jpg"), filename: "ninou-1.jpg", content_type: "image/jpg")
dogs19.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818677/ninou-2_uif8yo.jpg"), filename: "ninou-2.jpg", content_type: "image/jpg")
dogs19.photos.attach(io: URI.open("https://res.cloudinary.com/dcluutgvi/image/upload/v1655818677/ninou-3_pa2trn.jpg"), filename: "ninou-3.jpg", content_type: "image/jpg")

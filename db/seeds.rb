
puts "Destroy reservations"
Reservation.destroy_all
puts "Destroy chat_rooms"
ChatRoom.destroy_all
puts "Destroy events"
Event.destroy_all
puts "Destroy Users"
User.destroy_all
puts "Destroy Hospitals"
Hospital.destroy_all
puts 'Creating hospital...'

st_louis = Hospital.new({
  name: 'Hôpital St-Louis'
})
st_louis.save
st_antoine = Hospital.new({
  name: 'Hôpital St-Antoine'
})
st_antoine.save
puts 'Finished!'
puts 'Creating user...'
file = URI.open('https://avatars0.githubusercontent.com/u/53259210?v=4')
 leo = User.new( {
    username:      'chapschaps',
    room:      '3 rue mirbel, 75005, Paris',
    email: 'leo@gmail.com',
     password: '123456'
  })
leo.hospital = st_louis
 leo.photo.attach(io: file, filename: 'leo.jpg', content_type: 'image/jpg')
leo.save
file = URI.open('https://avatars1.githubusercontent.com/u/54894352?v=4')
  nadia = User.new ({
    username:      'nadiachou',
    room:      'Sydney',
    email: 'nadia@gmail.com',
    password: '123456'
  })
  nadia.hospital = st_louis
nadia.photo.attach(io: file, filename: 'nadia.jpg', content_type: 'image/jpg')
 nadia.save
 file = URI.open('https://ca.slack-edge.com/T02NE0241-U02NE1NL9-40998e0a5c92-512')
   boris = User.new ({
    username:      'Boris',
    room:      'Londre',
    email: 'boris@gmail.com',
    password: '123456'
  })
  boris.hospital = st_louis
boris.photo.attach(io: file, filename: 'boris.jpg', content_type: 'image/jpg')
boris.save
file = URI.open('https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   sarah = User.new ({
    username:      'Sarah',
    room:      '345',
    email: 'sarah@gmail.com',
    password: '123456'
  })
  sarah.hospital = st_louis
sarah.photo.attach(io: file, filename: 'sarah.jpg', content_type: 'image/jpg')
sarah.save
file = URI.open('https://images.pexels.com/photos/773371/pexels-photo-773371.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   jeanne = User.new ({
    username:      'Jeanne',
    room:      '112',
    email: 'jeanne@gmail.com',
    password: '123456'
  })
  jeanne.hospital = st_louis
jeanne.photo.attach(io: file, filename: 'jeanne.jpg', content_type: 'image/jpg')
if jeanne.save
  puts "heyyyyyyyyyy"
end
file = URI.open('https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   clemence = User.new ({
    username:      'Clémence',
    room:      '138',
    email: 'clemence@gmail.com',
    password: '123456'
  })
  clemence.hospital = st_louis
clemence.photo.attach(io: file, filename: 'clemence.jpg', content_type: 'image/jpg')
clemence.save


 file = URI.open('https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
   donald = User.new ({
    username:      'Donald',
    room:      'Florida',
    email: 'donald@gmail.com',
    password: '123456'
  })
donald.hospital = st_louis
donald.photo.attach(io: file, filename: 'donald.jpg', content_type: 'image/jpg')
donald.save
file = URI.open('https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   cyril = User.new ({
    username:      'Cyril.H',
    room:      '43',
    email: 'cyril@gmail.com',
    password: '123456'
  })
cyril.hospital = st_louis
cyril.photo.attach(io: file, filename: 'cyril.jpg', content_type: 'image/jpg')
cyril.save
file = URI.open('https://images.pexels.com/photos/1300402/pexels-photo-1300402.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   stephane = User.new ({
    username:      'Steph',
    room:      '280',
    email: 'stephane@gmail.com',
    password: '123456'
  })
stephane.hospital = st_louis
stephane.photo.attach(io: file, filename: 'stephane.jpg', content_type: 'image/jpg')
stephane.save
file = URI.open('https://images.pexels.com/photos/1300402/pexels-photo-1300402.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   jean = User.new ({
    username:      'Jeannot',
    room:      '345',
    email: 'jean@gmail.com',
    password: '123456'
  })
jean.hospital = st_louis
jean.photo.attach(io: file, filename: 'jean.jpg', content_type: 'image/jpg')
jean.save
file = URI.open('https://images.pexels.com/photos/1073097/pexels-photo-1073097.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
   benoit = User.new ({
    username:      'Ben75',
    room:      '335',
    email: 'benoit@gmail.com',
    password: '123456'
  })
benoit.hospital = st_louis
benoit.photo.attach(io: file, filename: 'benoit.jpg', content_type: 'image/jpg')
benoit.save


 file = URI.open('https://images.pexels.com/photos/1906997/pexels-photo-1906997.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
   tom = User.new ({
    username:      'Tom',
    room:      'Lille',
    email: 'tom@gmail.com',
    password: '123456'
  })
   tom.hospital = st_louis
tom.photo.attach(io: file, filename: 'tom.jpg', content_type: 'image/jpg')
tom.save
 file = URI.open('https://www.essence.com/wp-content/uploads/2018/06/image/2017/11/main/beyonce-tout_0-1472x1472.jpg')
   chloe = User.new ({
    username:      'Chloé',
    room:      'Los Angeles',
    email: 'chloe@gmail.com',
    password: '123456'
  })
   chloe.hospital = st_louis
chloe.photo.attach(io: file, filename: 'chloe.jpg', content_type: 'image/jpg')
chloe.save
 file = URI.open('https://images.unsplash.com/photo-1533101585792-27f81a845550?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')

   roger = User.new ({
    username:      'Roger',
    room:      '12',
    email: 'roger@gmail.com',
    password: '123456'
   })
   roger.hospital = st_louis
roger.photo.attach(io: file, filename: 'roger.jpg', content_type: 'image/jpg')
roger.save
file = URI.open('https://images.unsplash.com/photo-1444069069008-83a57aac43ac?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')

   michel = User.new ({
    username:      'Michel',
    room:      '15',
    email: 'michel@gmail.com',
    password: '123456'
  })

   michel.hospital = st_louis

michel.photo.attach(io: file, filename: 'michel.jpg', content_type: 'image/jpg')
michel.save

file = URI.open('https://images.unsplash.com/photo-1566616213894-2d4e1baee5d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')



    anna = User.new ({
    username:      'Anna',
    room:      '15',
    email: 'anna@gmail.com',
    password: '123456'


  })

   anna.hospital = st_louis

anna.photo.attach(io: file, filename: 'anna.jpg', content_type: 'image/jpg')
anna.save

file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')



    sophie = User.new ({
    username:      'Sophie',
    room:      '15',
    email: 'sophie@gmail.com',
    password: '123456'

  })

   sophie.hospital = st_louis

sophie.photo.attach(io: file, filename: 'sophie.jpg', content_type: 'image/jpg')
sophie.save

file = URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

    eddie = User.new ({
    username:      'Eddie',
    room:      '15',
    email: 'eddie@gmail.com',
    password: '123456'


  })

   eddie.hospital = st_louis

eddie.photo.attach(io: file, filename: 'eddie.jpg', content_type: 'image/jpg')
eddie.save

 puts 'Finished!'
puts 'Creating events...'
file = URI.open('https://images.unsplash.com/photo-1501003878151-d3cb87799705?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

   belote = Event.new ({
    name:      'Belote',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,7),
    start:          DateTime.new(2019,12,14,15),
    end:          DateTime.new(2019,12,14,18),
    max_participants: 4,
    description: 'Je vous propose une petite partie de coinche pour se détendre, dans la bonne humeur. Je ramène le jeu de cartes!',

  })

belote.hospital = st_louis
belote.user = leo
belote.photo.attach(io: file, filename: 'belote.jpg', content_type: 'image/jpg')
belote.save


file = URI.open('https://images.pexels.com/photos/1329645/pexels-photo-1329645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    monopoly = Event.new ({
    name:      'Monopoly',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,11),
    start:          DateTime.new(2019,12,11,15),
    end:          DateTime.new(2019,12,11,18),
    max_participants: 4,
    description: 'Je vous propose une petite partie de monopoly pour se détendre, dans la bonne humeur. Je ramène le jeu !'
  })

monopoly.hospital = st_louis
monopoly.user = roger
monopoly.photo.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')
monopoly.save


file = URI.open('https://www.regles-de-jeux.com/wp-content/uploads/2017/12/regle-bridge-1024x768.jpg')


    bridge = Event.new ({
    name:      'Partie de Bridge',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,13),
    start:          DateTime.new(2019,12,20,13),
    end:          DateTime.new(2019,12,20,18),
    max_participants: 4,
    description: 'Je vous invite à une petite partie de bridge pour se détendre, dans la bonne humeur. Je ramène le jeu !'
  })



bridge.hospital = st_louis
bridge.user = cyril
bridge.photo.attach(io: file, filename: 'bridge.jpg', content_type: 'image/jpg')
bridge.save


 file = URI.open('https://images.unsplash.com/photo-1568270363382-992bd101f48e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
   tricot = Event.new ({
    name:      'Tricot',
    location:      'Salle M304',
     date:           DateTime.new(2019,12,10),
    start:         DateTime.new(2019,12,4,15),
    end:         DateTime.new(2019,12,4,17),

    max_participants: 6,
    description: 'Atelier démo pour apprendre à faire du tricot au point mousse pour cet hiver.'
  })
tricot.hospital = st_louis
tricot.user = nadia
tricot.photo.attach(io: file, filename: 'tricot.jpg', content_type: 'image/jpg')
tricot.save
file = URI.open('https://images.unsplash.com/photo-1556112353-ad4fb98d81e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
   uno = Event.new ({
    name:      'Partie de Uno',
    location:      'Salle A204',
    date:             DateTime.new(2019,12,6),
    start:          DateTime.new(2019,12,15,16),
    end:         DateTime.new(2019,12,15,17),
    max_participants: 8,
    description: 'Le Uno reste une valeur sûre pour passer une bonne après-midi.'
  })
uno.hospital = st_louis
uno.user = nadia
uno.photo.attach(io: file, filename: 'uno.jpg', content_type: 'image/jpg')
uno.save
file = URI.open('https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
   fifa = Event.new ({
    name:      'Tournoi de Fifa',
    location:      'Salle de Television',
    date:             DateTime.new(2019,12,9),
    start:         DateTime.new(2019,12,18,21),
    end:          DateTime.new(2019,12,18,23),
    max_participants: 8,
    description: "On m'a offert une Playstation ce weekend, qui veut venir jouer à Fifa avec moi ??"
  })
fifa.hospital = st_louis
fifa.user = donald
fifa.photo.attach(io: file, filename: 'fifa.jpg', content_type: 'image/jpg')
fifa.save
file = URI.open('https://images.unsplash.com/photo-1535016120720-40c646be5580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
   film = Event.new ({
    name:      'Projection des Miserables',
    location:      'Salle A204',
    date:             DateTime.new(2019,12,6),
    start:         DateTime.new(2019,12, 19,21),
    end:         DateTime.new(2019,12,19,23),
    max_participants: 8,
    description: 'Le film Les Misérables est un grand classique du cinéma qui vaut le détour, je vous propose une projection ensemble'
  })
film.hospital = st_louis
film.user = tom
film.photo.attach(io: file, filename: 'film.jpg', content_type: 'image/jpg')
film.save

file = URI.open('https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
   code = Event.new ({
    name:      'Apprendre à Coder',
    location:      'Salle détente',
    date:             DateTime.new(2019,12,9),
    start:         DateTime.new(2019,12,14,15),
    end:         DateTime.new(2019,12,14,17),
    max_participants: 8,
    description: 'L\'année dernière, j\'ai fait une formation intensive en dévelopment web. J\'adorerais partager ce que j\'ai appris avec ceux qui seraient intéressés. Ma spécialité etait le Javascript. Au menu: comment coder un super boutons avec de effets de ouf!',
  })
code.hospital = st_louis
code.user = leo
code.photo.attach(io: file, filename: 'code.jpg', content_type: 'image/jpg')
code.save


file = URI.open('https://images.pexels.com/photos/167446/pexels-photo-167446.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    chant = Event.new ({
    name:      'Chant à Capella',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,25),
    start:          DateTime.new(2019,12,5,15),
    end:          DateTime.new(2019,12,5,18),
    max_participants: 10,
    description: 'Il paraît que tout le monde a une voix qui vaut le détour! Retrouvons-nous pour pousser la chansonnette !',
  })

chant.hospital = st_louis
chant.user = anna
chant.photo.attach(io: file, filename: 'chant.jpg', content_type: 'image/jpg')
chant.save

file = URI.open('https://images.pexels.com/photos/2420585/pexels-photo-2420585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    discussion = Event.new ({
    name:      'Discussion sur la Pluie et leBeau Temps',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,31),
    start:          DateTime.new(2019,12,11,10),
    end:          DateTime.new(2019,12,11,13),
    max_participants: 10,
    description: 'Nous sommes pas mal de nouveaux patients, et si on se retrouvait pour faire connaissance?',
  })

discussion.hospital = st_louis
discussion.user = tom
discussion.photo.attach(io: file, filename: 'discussion.jpg', content_type: 'image/jpg')
discussion.save

file = URI.open('https://images.pexels.com/photos/713149/pexels-photo-713149.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    impro = Event.new ({
    name:      'Initiation au Théâtre d\'Impro',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,19),
    start:          DateTime.new(2019,12,9,14),
    end:          DateTime.new(2019,12,9,18),
    max_participants: 8,
    description: 'Le théâtre d\'impro est excellent pour la santé ! On essaie ensemble ? Même si vous êtes timide venez quand même !'
  })

impro.hospital = st_louis
impro.user = jeanne
impro.photo.attach(io: file, filename: 'impro.jpg', content_type: 'image/jpg')
impro.save

file = URI.open('https://images.pexels.com/photos/973403/pexels-photo-973403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    coiffure = Event.new ({
    name:      'Se faire de Super Coiffures',
    location:      'Ma chambre, 207',
    date:             DateTime.new(2019,12,22),
    start:          DateTime.new(2019,12,6,10),
    end:          DateTime.new(2019,12,6,13),
    max_participants: 6,
    description: 'Changer de coiffure fait du bien au moral ! Je peux vous montrer comment se faire des tresses indiennes super jolies en quelques minutes',
  })

coiffure.hospital = st_louis
coiffure.user = clemence
coiffure.photo.attach(io: file, filename: 'coiffure.jpg', content_type: 'image/jpg')
coiffure.save

file = URI.open('https://images.pexels.com/photos/6453/nature-flowers-plant-spring.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    blabla = Event.new ({
    name:      'Simplement faire Connaissance',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,23),
    start:          DateTime.new(2019,12,4,10),
    end:          DateTime.new(2019,12,4,13),
    max_participants: 8,
    description: 'Je suis nouveau à l\'hôpital et je serai content de pouvoir passer du temps avec vous'
  })

blabla.hospital = st_louis
blabla.user = chloe
blabla.photo.attach(io: file, filename: 'blabla.jpg', content_type: 'image/jpg')
blabla.save

file = URI.open('https://images.pexels.com/photos/6453/nature-flowers-plant-spring.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    bataille = Event.new ({
    name:      'Bataille Corse',
    location:      'Salle 203',
    date:             DateTime.new(2019,12,12),
    start:          DateTime.new(2019,12,12,10),
    end:          DateTime.new(2019,12,12,12),
    max_participants: 4,
    description: 'Des intéressés par une petite bataille corse ? '
  })

bataille.hospital = st_louis
bataille.user = stephane
bataille.photo.attach(io: file, filename: 'bataille.jpg', content_type: 'image/jpg')
bataille.save

file = URI.open('https://images.pexels.com/photos/1753411/pexels-photo-1753411.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    tisane = Event.new ({
    name:      'Tisane de Noël',
    location:      'Salon du RDC',
    date:             DateTime.new(2019,12,23),
    start:          DateTime.new(2019,12,23,17),
    end:          DateTime.new(2019,12,23,18),
    max_participants: 4,
    description: 'La tisane de l\'amitié, juste avant Noël. Je dispose de plusieurs tisanes délicieuses à vous faire goûter.'
  })

tisane.hospital = st_louis
tisane.user = sophie
tisane.photo.attach(io: file, filename: 'tisane.jpg', content_type: 'image/jpg')
tisane.save

file = URI.open('https://images.pexels.com/photos/381739/pexels-photo-381739.jpeg?cs=srgb&dl=beautiful-bloom-blooming-blossom-381739.jpg&fm=jpg')


    jardin = Event.new ({
    name:      'Promenade dans le Jardin',
    location:      'Jardin',
    date:             DateTime.new(2019,12,17),
    start:          DateTime.new(2019,12,17,14),
    end:          DateTime.new(2019,12,17,15),
    max_participants: 8,
    description: 'Une petite promenade digestive fait toujours plaisir, qui se joint à moi?'
  })

jardin.hospital = st_louis
jardin.user = jean
jardin.photo.attach(io: file, filename: 'jardin.jpg', content_type: 'image/jpg')
jardin.save

file = URI.open('https://images.pexels.com/photos/259698/pexels-photo-259698.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    chanson = Event.new ({
    name:      'Chantons Ensemble',
    location:      'Refectoire',
    date:             DateTime.new(2019,12,14),
    start:          DateTime.new(2019,12,14,15),
    end:          DateTime.new(2019,12,14,17),
    max_participants: 15,
    description: 'L\'équipe médicale organise pour nous une session de chants de Noël, ça va être super beau, il faut être nombreux !'
  })

chanson.hospital = st_louis
chanson.user = benoit
chanson.photo.attach(io: file, filename: 'chanson.jpg', content_type: 'image/jpg')
chanson.save


file = URI.open('https://images.pexels.com/photos/1708601/pexels-photo-1708601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    depart = Event.new ({
    name:      'Mon Départ de la Clinique',
    location:      'Cafeteria',
    date:             DateTime.new(2019,12,18),
    start:          DateTime.new(2019,12,18,15),
    end:          DateTime.new(2019,12,18,17),
    max_participants: 15,
    description: 'Chers tous, ça y est je quitte la clinique après 4 mois de soins intensifs. Je vous invite à un petit goûter pour fêter ça.'
  })

depart.hospital = st_louis
depart.user = eddie
depart.photo.attach(io: file, filename: 'depart.jpg', content_type: 'image/jpg')
depart.save


file = URI.open('https://images.pexels.com/photos/1708601/pexels-photo-1708601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    priere = Event.new ({
    name:      'Prière de Noël',
    location:      'Salon',
    date:             DateTime.new(2019,12,25),
    start:          DateTime.new(2019,12,25,15),
    end:          DateTime.new(2019,12,25,17),
    max_participants: 10,
    description: 'Prions ensemble pour Noël et pour garder espoir'
  })

priere.hospital = st_louis
priere.user = anna
priere.photo.attach(io: file, filename: 'priere.jpg', content_type: 'image/jpg')
priere.save


file = URI.open('https://images.pexels.com/photos/1257105/pexels-photo-1257105.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    lecture = Event.new ({
    name:      'Lecture pour Enfants',
    location:      'chambre 46',
    date:             DateTime.new(2019,12,28),
    start:          DateTime.new(2019,12,4,15),
    end:          DateTime.new(2019,12,4,17),
    max_participants: 5,
    description: 'Mon fils sera ravi de partager ses livres avec les autres enfants et de lire tous ensemble'
  })

lecture.hospital = st_louis
lecture.user = sarah
lecture.photo.attach(io: file, filename: 'lecture.jpg', content_type: 'image/jpg')
lecture.save

puts 'Finished!'
puts 'Creating reservations...'
reserve = Reservation.new
reserve.user = nadia
reserve.event = belote
reserve.save
reserve = Reservation.new
reserve.user = sophie
reserve.event = belote
reserve.save
reserve = Reservation.new
reserve.user = tom
reserve.event = belote
reserve.save

reserve = Reservation.new
reserve.user = jeanne
reserve.event = impro
reserve.save
reserve = Reservation.new
reserve.user = nadia
reserve.event = impro
reserve.save
reserve = Reservation.new
reserve.user = roger
reserve.event = impro
reserve.save
reserve = Reservation.new
reserve.user = clemence
reserve.event = impro
reserve.save
reserve = Reservation.new
reserve.user = boris
reserve.event = impro
reserve.save
reserve = Reservation.new
reserve.user = donald
reserve.event = impro
reserve.save


reserve = Reservation.new
reserve.user = nadia
reserve.event = tricot
reserve.save
reserve = Reservation.new
reserve.user = sophie
reserve.event = tricot
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = tricot
reserve.save
reserve = Reservation.new
reserve.user = anna
reserve.event = tricot
reserve.save

reserve = Reservation.new
reserve.user = sarah
reserve.event = lecture
reserve.save
reserve = Reservation.new
reserve.user = sophie
reserve.event = lecture
reserve.save
reserve = Reservation.new
reserve.user = boris
reserve.event = lecture
reserve.save
reserve = Reservation.new
reserve.user = clemence
reserve.event = lecture
reserve.save

reserve = Reservation.new
reserve.user = jean
reserve.event = jardin
reserve.save
reserve = Reservation.new
reserve.user = michel
reserve.event = jardin
reserve.save
reserve = Reservation.new
reserve.user = stephane
reserve.event = jardin
reserve.save

reserve = Reservation.new
reserve.user = sophie
reserve.event = tisane
reserve.save
reserve = Reservation.new
reserve.user = anna
reserve.event = tisane
reserve.save
reserve = Reservation.new
reserve.user = eddie
reserve.event = tisane
reserve.save
reserve = Reservation.new
reserve.user = cyril
reserve.event = tisane
reserve.save

reserve = Reservation.new
reserve.user = chloe
reserve.event = blabla
reserve.save
reserve = Reservation.new
reserve.user = jeanne
reserve.event = blabla
reserve.save
reserve = Reservation.new
reserve.user = jean
reserve.event = blabla
reserve.save

reserve = Reservation.new
reserve.user = clemence
reserve.event = coiffure
reserve.save
reserve = Reservation.new
reserve.user = sarah
reserve.event = coiffure
reserve.save
reserve = Reservation.new
reserve.user = jeanne
reserve.event = coiffure
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = coiffure
reserve.save
reserve = Reservation.new
reserve.user = nadia
reserve.event = coiffure
reserve.save

reserve = Reservation.new
reserve.user = eddie
reserve.event = depart
reserve.save
reserve = Reservation.new
reserve.user = leo
reserve.event = depart
reserve.save
reserve = Reservation.new
reserve.user = nadia
reserve.event = depart
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = depart
reserve.save
reserve = Reservation.new
reserve.user = clemence
reserve.event = depart
reserve.save
reserve = Reservation.new
reserve.user = roger
reserve.event = depart
reserve.save

reserve = Reservation.new
reserve.user = stephane
reserve.event = bataille
reserve.save
reserve = Reservation.new
reserve.user = jean
reserve.event = bataille
reserve.save
reserve = Reservation.new
reserve.user = sophie
reserve.event = bataille
reserve.save
reserve = Reservation.new
reserve.user = michel
reserve.event = bataille
reserve.save

reserve = Reservation.new
reserve.user = leo
reserve.event = code
reserve.save
reserve = Reservation.new
reserve.user = tom
reserve.event = code
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = code
reserve.save
reserve = Reservation.new
reserve.user = nadia
reserve.event = code
reserve.save
reserve = Reservation.new
reserve.user = donald
reserve.event = code
reserve.save

reserve = Reservation.new
reserve.user = tom
reserve.event = discussion
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = discussion
reserve.save
reserve = Reservation.new
reserve.user = anna
reserve.event = discussion
reserve.save
reserve = Reservation.new
reserve.user = boris
reserve.event = discussion
reserve.save

reserve = Reservation.new
reserve.user = donald
reserve.event = fifa
reserve.save
reserve = Reservation.new
reserve.user = tom
reserve.event = fifa
reserve.save
reserve = Reservation.new
reserve.user = cyril
reserve.event = fifa
reserve.save
reserve = Reservation.new
reserve.user = sophie
reserve.event = fifa
reserve.save
reserve = Reservation.new
reserve.user = nadia
reserve.event = fifa
reserve.save

reserve = Reservation.new
reserve.user = anna
reserve.event = chant
reserve.save
reserve = Reservation.new
reserve.user = roger
reserve.event = chant
reserve.save
reserve = Reservation.new
reserve.user = michel
reserve.event = chant
reserve.save
reserve = Reservation.new
reserve.user = clemence
reserve.event = chant
reserve.save

puts 'Finished!'

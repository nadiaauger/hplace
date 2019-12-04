
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
 file = URI.open('https://i.pinimg.com/originals/24/c6/50/24c65066e5a0df1548b96f52f88fec74.jpg')
   donald = User.new ({
    username:      'TheDonald',
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
    start:          DateTime.new(2019,12,14,15),
    end:          DateTime.new(2019,12,14,18),
    max_participants: 4,
    description: 'Je vous propose une petite partie de coinche pour se détendre, dans la bonne humeur. Je ramène le jeu de cartes!'
   })
 
belote.hospital = st_louis
belote.user = leo
belote.photo.attach(io: file, filename: 'belote.jpg', content_type: 'image/jpg')
belote.save
 

file = URI.open('https://images.pexels.com/photos/1329645/pexels-photo-1329645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')


    monopoly = Event.new ({
    name:      'monopoly',
    location:      'Cafeteria',
    start:          DateTime.new(2019,12,7,15),
    end:          DateTime.new(2019,12,7,18),
    max_participants: 4,
    description: 'Je vous propose une petite partie de monopoly pour se détendre, dans la bonne humeur. Je ramène le jeu !'
  })
 
monopoly.hospital = st_louis
monopoly.user = cyril
monopoly.photo.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')
monopoly.save
 

file = URI.open('https://www.regles-de-jeux.com/wp-content/uploads/2017/12/regle-bridge-1024x768.jpg')


    bridge = Event.new ({
    name:      'Partie de bridge',
    location:      'Cafeteria',
    start:          DateTime.new(2019,12,7,15),
    end:          DateTime.new(2019,12,7,18),
    max_participants: 4,
    description: 'Je vous propose une petite partie de bridge pour se détendre, dans la bonne humeur. Je ramène le jeu !'
  })
 

 
bridge.hospital = st_louis
bridge.user = cyril
bridge.photo.attach(io: file, filename: 'bridge.jpg', content_type: 'image/jpg')
bridge.save
 

 file = URI.open('https://images.unsplash.com/photo-1568270363382-992bd101f48e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
   tricot = Event.new ({
    name:      'Tricot',
    location:      'Salle M304',
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
    start:          DateTime.new(2019,12,9,15),
    end:         DateTime.new(2019,12,9,17),
    max_participants: 8,
    description: 'Le Uno reste une valeur sûre pour passer une bonne après-midi.'
  })
uno.hospital = st_louis
uno.user = nadia
uno.photo.attach(io: file, filename: 'uno.jpg', content_type: 'image/jpg')
uno.save
file = URI.open('https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
   fifa = Event.new ({
    name:      'Tournoi de fifa',
    location:      'Salle de Television',
    start:         DateTime.new(2019,12,16,11),
    end:          DateTime.new(2019,12,16,13),
    max_participants: 8,
    description: "On m'a offert une Playstation ce weekend, qui veut venir jouer à Fifa avec moi ??"
  })
fifa.hospital = st_louis
fifa.user = leo
fifa.photo.attach(io: file, filename: 'fifa.jpg', content_type: 'image/jpg')
fifa.save
file = URI.open('https://images.unsplash.com/photo-1535016120720-40c646be5580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
   film = Event.new ({
    name:      'Projection des Miserables',
    location:      'Salle A204',
    start:         DateTime.new(2019,12,27,15),
    end:         DateTime.new(2019,12,27,18),
    max_participants: 8,
    description: 'Le film Les Misérables est un grand classique du cinéma qui vaut le détour, je vous propose une projection ensemble'
  })
film.hospital = st_louis
film.user = tom
film.photo.attach(io: file, filename: 'film.jpg', content_type: 'image/jpg')
film.save
file = URI.open('https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
   code = Event.new ({
    name:      'Apprendre à coder',
    location:      'Salle détente',
    start:         DateTime.new(2019,12,7,15),
    end:         DateTime.new(2019,12,7,17),
    max_participants: 8,
    description: 'L\'année dernière, j\'ai fait une formation intensive en dévelopment web. J\'adorerais partager ce que j\'ai appris avec ceux qui seraient intéressé. Ma spécialité etait le Javascript. Au menu: comment coder un super boutons avec de effets de ouf!'
  })
code.hospital = st_louis
code.user = leo
code.photo.attach(io: file, filename: 'code.jpg', content_type: 'image/jpg')
code.save
puts 'Finished!'
puts 'Creating reservations...'
reserve = Reservation.new
reserve.user = nadia
reserve.event = belote
reserve.save
reserve = Reservation.new
reserve.user = tom
reserve.event = belote
reserve.save
reserve = Reservation.new
reserve.user = donald
reserve.event = belote
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = belote
reserve.save
reserve = Reservation.new
reserve.user = leo
reserve.event = tricot
reserve.save
reserve = Reservation.new
reserve.user = chloe
reserve.event = tricot
reserve.save
reserve = Reservation.new
reserve.user = tom
reserve.event = tricot
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
puts 'Finished!'

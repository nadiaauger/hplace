# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'


#


filepath = 'db/hospitals.json'

serialized_hospitals = File.read(filepath)

hospitals = JSON.parse(serialized_hospitals)


puts "Destroy reservations"
Reservation.destroy_all

puts "Destroy events"
Event.destroy_all

puts "Destroy Users"
User.destroy_all


puts "Destroy Hospitals"
Hospital.destroy_all


puts 'Creating hospital...'

puts "Prepare for leo mega-list:"
sleep 1
puts '3'
sleep 1
puts '2'
sleep 1
puts '1'
sleep 2
puts 'LETSGOOOOOOOOO:'

puts hospitals.class
puts "aaa"
puts "bb"
puts hospitals["hospital"]
puts "cc"
hospitals["hospital"].each do |hospital|
  Hospital.create!({
    name: hospital
  })
end

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

 file = URI.open('https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/03/1516016506-vhp.jpg?crop=0.598xw:1.00xh;0.254xw,0&resize=480:*')



   tom = User.new ({
    username:      'Voldemort',
    room:      'Lille',

    email: 'tom@gmail.com',
    password: '123456'

  })

   tom.hospital = st_louis

tom.photo.attach(io: file, filename: 'tom.jpg', content_type: 'image/jpg')
tom.save

 file = URI.open('https://www.essence.com/wp-content/uploads/2018/06/image/2017/11/main/beyonce-tout_0-1472x1472.jpg')



   beyonce = User.new ({
    username:      'Queen-B',
    room:      'LA',


    email: 'beyonce@gmail.com',
    password: '123456'

  })

   beyonce.hospital = st_louis

beyonce.photo.attach(io: file, filename: 'beyonce.jpg', content_type: 'image/jpg')
beyonce.save

puts 'Finished!'



puts 'Creating events...'

file = URI.open('https://images.unsplash.com/photo-1501003878151-d3cb87799705?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')



   belotte = Event.new ({
    name:      'Belotte',
    location:      'Cafeteria',
    start:         Time.now + 300,
    end:         Time.now + 450,
    max_participants: 6,
    description: 'We rely on advertising to provide you with free content! Our third-party vendors or we use cookies to access and use information about your device to ensure the proper functioning of our website or as required for: personalization; ad selection, delivery, and reporting; content selection.'
  })


belotte.hospital = st_louis
belotte.user = leo
belotte.photo.attach(io: file, filename: 'belotte.jpg', content_type: 'image/jpg')
belotte.save

file = URI.open('https://images.unsplash.com/photo-1568270363382-992bd101f48e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')



   tricot = Event.new ({
    name:      'Tricot',
    location:      'Salle M304',

    start:         Time.now + 600,
    end:         Time.now + 850,

    max_participants: 6,
    description: 'We rely on advertising to provide you with free content! Our third-party vendors or we use cookies to access and use information about your device to ensure the proper functioning of our website or as required for: personalization; ad selection, delivery, and reporting; content selection.'

  })

tricot.hospital = st_louis
tricot.user = nadia
tricot.photo.attach(io: file, filename: 'tricot.jpg', content_type: 'image/jpg')
tricot.save

file = URI.open('https://images.unsplash.com/photo-1556112353-ad4fb98d81e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')



   uno = Event.new ({
    name:      'Uno',
    location:      'Salle A204',
    start:         Time.now + 900,
    end:         Time.now + 1350,
    max_participants: 8,
    description: 'We rely on advertising to provide you with free content! Our third-party vendors or we use cookies to access and use information about your device to ensure the proper functioning of our website or as required for: personalization; ad selection, delivery, and reporting; content selection.'

  })

uno.hospital = st_louis
uno.user = nadia
uno.photo.attach(io: file, filename: 'uno.jpg', content_type: 'image/jpg')
uno.save

file = URI.open('https://images.unsplash.com/photo-1535016120720-40c646be5580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')



   film = Event.new ({
    name:      'Projection des Misérables',
    location:      'Salle A204',
    start:         Time.now + 2000,
    end:         Time.now + 2350,
    max_participants: 8,
    description: 'We rely on advertising to provide you with free content! Our third-party vendors or we use cookies to access and use information about your device to ensure the proper functioning of our website or as required for: personalization; ad selection, delivery, and reporting; content selection.'

  })

film.hospital = st_louis
film.user = tom
film.photo.attach(io: file, filename: 'film.jpg', content_type: 'image/jpg')
film.save



file = URI.open('https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')



   code = Event.new ({
    name:      'Apprendre à coder',
    location:      'Salle A204',
    start:         Time.now + 20000,
    end:         Time.now + 20350,
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
reserve.event = belotte
reserve.save

reserve = Reservation.new
reserve.user = tom
reserve.event = belotte
reserve.save

reserve = Reservation.new
reserve.user = donald
reserve.event = belotte
reserve.save

reserve = Reservation.new
reserve.user = beyonce
reserve.event = belotte
reserve.save

reserve = Reservation.new
reserve.user = leo
reserve.event = tricot
reserve.save

reserve = Reservation.new
reserve.user = beyonce
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
reserve.user = beyonce
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





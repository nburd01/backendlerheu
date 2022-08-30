# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'database_cleaner/active_record'
DatabaseCleaner.clean_with(:truncation)

User.destroy_all
Discipline.destroy_all
Category.destroy_all
Team.destroy_all
Player.destroy_all
Competition.destroy_all
Score.destroy_all
Opponent.destroy_all
# Match.destroy_all



9.times do |r|
    user = User.create!(
      email: "a#{r}@yopmail.com",
      password: 'aaaaaa'
      );
end

3.times do |r|

score = Score.create!(
      locaux: "Locaux",
      score_locaux: rand(1..3),
      visiteurs: "Le Rheu",
      score_visiteurs:rand(1..3),
      division: "division" ,
      equipe: "equipe" ,
      categorie:  "categorie"
);
  
end

user = User.create!(
  email: "admin@yopmail.com",
  password: 'adminpassword',
  admin: true
);


Discipline.create(
  name: 'football', 
  discipline_img:'https://s3.static-footeo.com/1200/uploads/sclerheu/gallery/72709234_2411099205648659_1072033552297623552_o__pz6mhj.jpg',
  discipline_root:'football'
          )
Discipline.create(
  name: 'beach soccer', 
  discipline_img:'https://fff.twic.pics/https://media.fff.fr/uploads/images/4d7125038d960b502bef5aa2bdc9021a.png?twic=v1/resize=730',
  discipline_root:'beach'
          )
Discipline.create(
  name: 'futsal', 
  discipline_img:'https://fff.twic.pics/https://media.fff.fr/uploads/images/ecd02c5415985e752f4aad7c3b61086d.png?twic=v1/resize=730',
  discipline_root:'futsal'
          )
Discipline.create(
  name: 'fitfoot', 
  discipline_img:'https://lfhf.fff.fr/wp-content/uploads/sites/15/2019/12/FitFoot-fille-611x378.png',
  discipline_root:'fitfoot'
          )
Discipline.create(
  name: 'féminines', 
  discipline_img:'https://imgs.search.brave.com/sitYDMmQPE4PfL4UN-fseK8l4VLQ2TfgrGas5O8TIu8/rs:fit:639:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/V0UtaHlHNFVkdHhY/c2hkdk5oUW9nQUFB/QSZwaWQ9QXBp',
  discipline_root:'feminines'
          )
Discipline.create(
  name: 'arbitrage', 
  discipline_img:'https://imgs.search.brave.com/urKZiDMJSGPgW8IfRrWlQpF68aoZ-YmoQG6naYDVSgU/rs:fit:766:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/aWlBSmpmaVA0czRW/a1gyVENDVlNRSGFF/bCZwaWQ9QXBp',
  discipline_root:'arbitrage'
          )


 Post.create(
    title: Faker::Book.title, 
    postBg:'https://s3.static-footeo.com/1200/uploads/sclerheu/gallery/72709234_2411099205648659_1072033552297623552_o__pz6mhj.jpg',
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!'
            )
  Post.create(
    title: Faker::Book.title, 
    postBg:'https://fff.twic.pics/https://media.fff.fr/uploads/images/4d7125038d960b502bef5aa2bdc9021a.png?twic=v1/resize=730',
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!'
            )
  Post.create(
    title: Faker::Book.title, 
    postBg:'https://fff.twic.pics/https://media.fff.fr/uploads/images/ecd02c5415985e752f4aad7c3b61086d.png?twic=v1/resize=730',
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!'
            )
  Post.create(
    title: Faker::Book.title, 
    postBg:'https://lfhf.fff.fr/wp-content/uploads/sites/15/2019/12/FitFoot-fille-611x378.png',
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!'
            )
  Post.create(
    title: Faker::Book.title, 
    postBg:'https://imgs.search.brave.com/sitYDMmQPE4PfL4UN-fseK8l4VLQ2TfgrGas5O8TIu8/rs:fit:639:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/V0UtaHlHNFVkdHhY/c2hkdk5oUW9nQUFB/QSZwaWQ9QXBp',
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!'
            )
  Post.create(
    title: Faker::Book.title, 
    postBg:'https://imgs.search.brave.com/urKZiDMJSGPgW8IfRrWlQpF68aoZ-YmoQG6naYDVSgU/rs:fit:766:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5S/aWlBSmpmaVA0czRW/a1gyVENDVlNRSGFF/bCZwaWQ9QXBp',
    content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,
quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos 
sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam
recusandae alias error harum maxime adipisci amet laborum. Perspiciatis 
minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit 
quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur 
fugiat, temporibus enim commodi iusto libero magni deleniti quod quam 
consequuntur! Commodi minima excepturi repudiandae velit hic maxime
doloremque. Quaerat provident commodi consectetur veniam similique ad 
earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo 
fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore 
suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium
modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam 
totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam 
quasi aliquam eligendi, placeat qui corporis!'
            )

  Category.create(
    name: "seniors",
    discipline_id: 1
            )
  Category.create(
    name: "academy",
    discipline_id: 2
            )
  Category.create(
    name: "école de foot",
    discipline_id: 3
            )
  Category.create(
    name: "vétérans",
    discipline_id: 4
            )


  Player.create(
    first_name: Faker::Movies::StarWars.character,
    player_img: 'https://www.picclickimg.com/d/l400/pict/373395498468_/237-Dimitri-Payet-%E2%9A%BD-Olympique-Marseille-Om-Sticker.jpg',
    category_id: 1
            )
  Team.create(
    name: 1,
    category_id: 1
            )
  Team.create(
    name: 2,
    category_id: 2
            )
  Team.create(
    name: 3,
    category_id: 3
            )

  Competition.create(
    name: "R2",
    team_id: 1,
    category_id: 1
            )
  Competition.create(
    name: "R3",
    team_id: 2,
    category_id: 1
            )
  Competition.create(
    name: "D2",
    team_id: 3,
    category_id: 1
            )
  Competition.create(
    name: "Amical",
    team_id: 3,
    category_id: 1
            )

  Opponent.create(
    club: "F.C. Mordelles",
            )
  Opponent.create(
    club: "U.S. Saint Gilles",
            )

  # Match.create(
  #   competition_id:1,
  #   opponent_id:1,
  #   venue_id:3,
  #   calendar_id:1,
  #   opponent_id:1,
  #           )

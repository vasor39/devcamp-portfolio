# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Whatetnibjrkf foefjnf ojldnsflkjsfe skj dsoijds
    jkdnsfklmds sedfijdknmdsfoiklmdsf sfdkjldnmfdskjlkm,dsfvc dsfvc
    ljfndm,dgjlkmfds fdsknmfd dfsskjnmfds jndsfg",
    topic_id: Topic.last.id
  )
end

puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "#{skill} Skill",
    percent_utilized: 15
  )
end

puts "5 skills created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "asdfgdsafg fds fedsg jknfdsgf dslfkgnmfsd
    lkdsmfdgfkmfd klmfsddgbf klmfdsndg fdsdmgflknsdf",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x150"
  )
end

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "asdfgdsafg fds fedsg jknfdsgf dslfkgnmfsd
    lkdsmfdgfkmfd klmfsddgbf klmfdsndg fdsdmgflknsdf",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x150"
  )
end

puts "9 portfolio items created"

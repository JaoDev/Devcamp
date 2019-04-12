# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "My Blog post #{blog}",
    body: "Lorem ipsum dolor sit amet consectetur adipiscing elit congue,
    imperdiet phasellus habitasse inceptos eleifend etiam penatibus in,
    conubia morbi netus mattis nullam primis est.
    Primis purus non vel class id tortor sed penatibus, tellus habitasse
    dapibus at magnis venenatis euismod cursus,
    himenaeos fames mus scelerisque gravida ornare dis."
  )
  
end

puts "10 bogs create"

5.times do |skill|
  skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skill create"

9.times do |portfofolio_item|
  portfofolio.create!(
    title: "Porfolio tile #{portfofolio_item}",
    subtitle: "My great service",
    body: "onubia morbi netus mattis nullam primis est.
    Primis purus non vel class id tortor sed penatibus, tellus habitasse
    dapibus at magnis venenatis euismod cursus,",
    main_image: "https://via.placeholder.com/700x500.png?",
    thumb_image: "https://via.placeholder.com/350x200.png?"
  )
end

puts "9 portfofolio items created"

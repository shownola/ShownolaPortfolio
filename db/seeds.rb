User.create!(
  email: "test@test.com",
  password: "passwword",
  password_confirmation: "password",
  name: "Admin User",
  roles: "site_admin"
  )
  puts "1 Admin User Created"
  
  User.create!(
  email: "test2@test.com",
  password: "passwword",
  password_confirmation: "password",
  name: "Regular User",
  )
  puts "1 Regular User Created"

3.times do |topic|
  Topic.create!(
    title: "#{topic}"
    )
end
puts "3 Topics Created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Don't you see how great this is? You, you are a... Jesse look at me. You... are a blowfish. A blowfish! Think about it. Small in stature, not swift, not cunning. Easy prey for predators but the blowfish has a secret weapon doesn't he. Doesn't he? What does the blowfish do, Jesse. What does the blowfish do? The blowfish puffs up, okay?",
    topic_id: Topic.last.id
  )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Ruby #{skill}",
    percent_utilized: 15
    )
end
puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "The blowfish puffs himself up four, five times larger than normal and why? Why does he do that? So that it makes him intimidating, that's why. Intimidating!",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
end
puts "8 portfolio items created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Node",
    body: "The blowfish puffs himself up four, five times larger than normal and why? Why does he do that? So that it makes him intimidating, that's why. Intimidating!",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
end
puts "1 portfolio item created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
 
end
puts "3 technologies created"
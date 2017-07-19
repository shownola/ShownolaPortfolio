10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Don't you see how great this is? You, you are a... Jesse look at me. You... are a blowfish. A blowfish! Think about it. Small in stature, not swift, not cunning. Easy prey for predators but the blowfish has a secret weapon doesn't he. Doesn't he? What does the blowfish do, Jesse. What does the blowfish do? The blowfish puffs up, okay?"
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

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My service",
    body: "The blowfish puffs himself up four, five times larger than normal and why? Why does he do that? So that it makes him intimidating, that's why. Intimidating!",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
end
puts "9 portfolio items created"
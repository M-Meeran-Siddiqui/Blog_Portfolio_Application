=begin
10.times do |blog|
  Blog.create!(
     title: "My Blog Post #{blog}",
     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  )
end


5.times do |skill|
  Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
  )
end

puts "5 skills created"


9.times do |portfolio_item|
  Portfolio.create!(
     title: "Portfolio title: #{portfolio_item}",
     subtitle: "My great service",
     body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      main_image: "https://placehold.co/300x200",
      thumb_image: "https://placehold.co/300x150"
    # thumb_image: "https://static.vecteezy.com/system/resources/thumbnails/014/960/335/small/red-yellow-solid-color-wallpaper-image-for-free-background-download-free-photo.jpg"
  )
end

puts "9 portfolio items created"
=end


10.times do |blog|
  Blog.create_with(
    body: "Lorem ipsum dolor sit amet..."
  ).find_or_create_by(title: "My Blog Post #{blog}")
end

5.times do |skill|
  Skill.create_with(
    percent_utilized: 15
  ).find_or_create_by(title: "Rails #{skill}")
end

9.times do |portfolio_item|
  Portfolio.create_with(
    subtitle: "My great service",
    body: "Lorem ipsum dolor sit amet...",
    main_image: "https://source.unsplash.com/random/300x200",
    thumb_image: "https://source.unsplash.com/random/300x150"
  ).find_or_create_by(title: "Portfolio title: #{portfolio_item}")
end

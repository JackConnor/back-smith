# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Skater.create(name: "Jack", email:"jack@gmail.com", city:"LA", photo: "http://pad1.whstatic.com/images/thumb/8/82/Dress-Like-a-Skater-Step-15.jpg/670px-Dress-Like-a-Skater-Step-15.jpg", intro_video: "https://www.youtube.com/watch?v=bI6zLayBeJQ&index=4&list=PL2D68C2EE484F4AE2", is_filmer?: false, password: "dogs")

Skater.create(name: "Andrew Reynolds", email:"andrew@gmail.com", city:"SoCal", photo: "http://static.giantbomb.com/uploads/scale_small/0/2986/522646-andrew_reynolds.jpg", intro_video: "https://vimeo.com/46756377", is_filmer?: true, password: "frontside")

Skater.create(name: "Stephan Janoski", email:"stephan@gmail.com", city:"Brooklyn", photo: "https://cdn.shopify.com/s/files/1/0251/2114/t/2/assets/skateTeam_Stefan-Janoski.jpg?1210", intro_video: "https://www.youtube.com/watch?v=MbDlUoYlsyw", is_filmer?: true, password: "switch")

Skater.create(name: "Arto", email:"arto@gmail.com", city:"Brooklyn", photo: "https://cdn.shopify.com/s/files/1/0251/2114/t/2/assets/skateTeam_Stefan-Janoski.jpg?1210", intro_video: "https://www.youtube.com/watch?v=MbDlUoYlsyw", is_filmer?: true, password: "finland")

Skater.create(name: "Gary", email:"gary@gmail.com", city:"Brooklyn", photo: "https://cdn.shopify.com/s/files/1/0251/2114/t/2/assets/skateTeam_Stefan-Janoski.jpg?1210", intro_video: "https://www.youtube.com/watch?v=MbDlUoYlsyw", is_filmer?: true, password: "gary")

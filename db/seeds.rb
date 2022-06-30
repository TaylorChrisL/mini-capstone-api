# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.new(name: "Lion", price: 500, image_url: "https://thumbs.dreamstime.com/b/big-lion-lying-savannah-grass-landscape-characteristic-trees-plain-hills-background-35172905.jpg", description: "An exotic Lion from the plains of Africa").save

Product.new(name: "King Cobra", price: 350, image_url: "https://assets.telegraphindia.com/telegraph/2021/Oct/1634500170_18cobra_4c.gif", description: "An exquisite King Cobra, bred in captivity").save

Product.new(name: "Orca Whale", price: 700, image_url: "https://outsider.com/wp-content/uploads/2021/09/watch-worlds-loneliest-orca-bangs-head-against-tank-heartbreaking-moment-make-you-cry.jpg", description: "A magnificent Orca whale(Tank and girl not included)").save

Product.new(name: "Giraffe", price: 465, image_url: "https://cdn-acgla.nitrocdn.com/bvIhcJyiWKFqlMsfAAXRLitDZjWdRlLX/assets/static/optimized/rev-5131b73/wp-content/uploads/2020/11/Giraffe.jpg", description: "A very tall giraffe").save

Product.new(name: "Hamster", price: 2, image_url: "https://ichef.bbci.co.uk/news/976/cpsprodpb/12576/production/_122762157_gettyimages-1036891448.jpg", description: "A vicious hamster, please use caution while handling").save

Product.new(name: "Water Buffalo", price: 999, image_url: "https://animalia-bio.us-east-1.linodeobjects.com/animals/photos/full/1.25x1/XTVHPp0HweKQ4KLXu9FE.webp", description: "The rare water buffalo, a superb beast that has water in its name").save
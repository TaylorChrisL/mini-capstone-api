Product.destroy_all

Product.create!([
  {name: "Lion", price: "500.0", image_url: "https://thumbs.dreamstime.com/b/big-lion-lying-savannah-grass-landscape-characteristic-trees-plain-hills-background-35172905.jpg", description: "An exotic Lion from the plains of Africa", quantity: nil},
  {name: "King Cobra", price: "350.0", image_url: "https://assets.telegraphindia.com/telegraph/2021/Oct/1634500170_18cobra_4c.gif", description: "An exquisite King Cobra, bred in captivity", quantity: nil},
  {name: "Orca Whale", price: "700.0", image_url: "https://outsider.com/wp-content/uploads/2021/09/watch-worlds-loneliest-orca-bangs-head-against-tank-heartbreaking-moment-make-you-cry.jpg", description: "A magnificent Orca whale(Tank and girl not included)", quantity: nil},
  {name: "Giraffe", price: "465.0", image_url: "https://cdn-acgla.nitrocdn.com/bvIhcJyiWKFqlMsfAAXRLitDZjWdRlLX/assets/static/optimized/rev-5131b73/wp-content/uploads/2020/11/Giraffe.jpg", description: "A very tall giraffe", quantity: nil},
  {name: "Hamster", price: "2.0", image_url: "https://ichef.bbci.co.uk/news/976/cpsprodpb/12576/production/_122762157_gettyimages-1036891448.jpg", description: "A vicious hamster, please use caution while handling", quantity: nil},
  {name: "Water Buffalo", price: "999.0", image_url: "https://animalia-bio.us-east-1.linodeobjects.com/animals/photos/full/1.25x1/XTVHPp0HweKQ4KLXu9FE.webp", description: "The rare water buffalo, a superb beast that has water in its name", quantity: nil},
  {name: "Mammoth", price: "1750.0", image_url: "https://cdn.britannica.com/09/74609-050-21E14E52/example-museum-replica-species-Canadian-de-extinction.jpg", description: "The last mammoth on earth", quantity: nil},
  {name: "Kangaroo", price: "399.0", image_url: "https://i.pinimg.com/originals/e6/a3/7e/e6a37e83aa99dbb409e54767d7ea9aa7.jpg", description: "A boxing Kangaroo straight from the outback (Boxing gloves included)", quantity: nil}
])

Supplier.create([{name: "Africa", email: "africa@africa.com", phone_number: "111-111-1111"}, {name: "Australia", email: "australia@australia.com", phone_number: "222-222-2222"}, {name: "Other place", email: "otherplace@aol.com", phone_number: "333-333-3333"}])

Product.destroy_all
Supplier.destroy_all
Image.destroy_all


Supplier.create([{name: "Africa", email: "africa@africa.com", phone_number: "111-111-1111"}, {name: "Australia", email: "australia@australia.com", phone_number: "222-222-2222"}, {name: "Other place", email: "otherplace@aol.com", phone_number: "333-333-3333"}])

Product.create!([
  {name: "Lion", price: "500.0", description: "An exotic Lion from the plains of Africa", quantity: "1", supplier_id: "1"},
  {name: "King Cobra", price: "350.0", description: "An exquisite King Cobra, bred in captivity", quantity: "1", supplier_id: "3"},
  {name: "Orca Whale", price: "700.0", description: "A magnificent Orca whale(Tank and girl not included)", quantity: "1", supplier_id: "3"},
  {name: "Giraffe", price: "465.0", description: "A very tall giraffe", quantity: "1", supplier_id: "1"},
  {name: "Hamster", price: "2.0", description: "A vicious hamster, please use caution while handling", quantity: "1", supplier_id: "3"},
  {name: "Water Buffalo", price: "999.0", description: "The rare water buffalo, a superb beast that has water in its name", quantity: "16", supplier_id: "1"},
  {name: "Mammoth", price: "1750.0", description: "The last mammoth on earth", quantity: "1", supplier_id: "3"},
  {name: "Kangaroo", price: "399.0", description: "A boxing Kangaroo straight from the outback (Boxing gloves included)", quantity: "1", supplier_id: "2"}
])

Image.create([{url: "https://thumbs.dreamstime.com/b/big-lion-lying-savannah-grass-landscape-characteristic-trees-plain-hills-background-35172905.jpg", product_id: "1"}, {url: "https://assets.telegraphindia.com/telegraph/2021/Oct/1634500170_18cobra_4c.gif", product_id: "2"}, {url: "https://outsider.com/wp-content/uploads/2021/09/watch-worlds-loneliest-orca-bangs-head-against-tank-heartbreaking-moment-make-you-cry.jpg", product_id: "3"}, {url: "https://cdn-acgla.nitrocdn.com/bvIhcJyiWKFqlMsfAAXRLitDZjWdRlLX/assets/static/optimized/rev-5131b73/wp-content/uploads/2020/11/Giraffe.jpg", product_id: "4"}, {url: "https://ichef.bbci.co.uk/news/976/cpsprodpb/12576/production/_122762157_gettyimages-1036891448.jpg", product_id: "5"}, {url: "https://animalia-bio.us-east-1.linodeobjects.com/animals/photos/full/1.25x1/XTVHPp0HweKQ4KLXu9FE.webp", product_id: "6"}, {url: "https://cdn.britannica.com/09/74609-050-21E14E52/example-museum-replica-species-Canadian-de-extinction.jpg", product_id: "7"}, {url: "https://i.pinimg.com/originals/e6/a3/7e/e6a37e83aa99dbb409e54767d7ea9aa7.jpg", product_id: "8"}])

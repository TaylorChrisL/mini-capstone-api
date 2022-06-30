require "HTTP"
require "tty-prompt"
require "tty-table"

prompt = TTY::Prompt.new
table = TTY::Table.new
table << ["Name", "Description"]

response = HTTP.get("http://localhost:3000/products_path").parse(:json)

puts "Welcome to 'The Exotic Animal' store"
puts
puts "Our Current Stock:"

choices = []

response.each do |product|
  choices << [product["name"], product["description"]]
end

choices.each do |choice|
  table << choice
end

puts table.render(:ascii, alignments: [:center, :left])

# c_number = 1
# input = prompt.select("Select which product you would like more information about: ") do |menu|
#   choices.each do |u_choice|
#     menu.choice u_choice, c_number
#     c_number += 1
#   end
# end

# input = input - 1

# puts "#{response[input]["name"]} - $#{response[input]["price"]}"
# puts response[input]["description"]
# puts response[input]["image_url"]




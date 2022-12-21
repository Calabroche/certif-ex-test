# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Tree.destroy_all

# puts 'Creating 5 fake users...'
# puts 'Creating 5 fake trees...'

# melanie = User.create!(first_name: 'melanie', last_name: 'Doe', email: 'melanie@gmail.com', password: 'secret')

# Tree.create!(name: 'melanie’s apple tree', address: '20 rue des Capucins 69001 Lyon', description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.', price_per_year: 175, quantity_per_year: 5, fruit: 'apple', user: melanie)

# serge = User.create!(first_name: 'Serge', last_name: 'Benahmou', email: 'serge@gmail.com', password: 'secret')

# Tree.create!(name: 'Serge’s pear tree', address: '02 rue des jolies fleurs 69001 Lyon', description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.', price_per_year: 175, quantity_per_year: 5, fruit: 'apple', user: serge)

# michel = User.create!(first_name: 'Michel', last_name: 'Polnaaref', email: 'michel@gmail.com', password: 'secret')

# Tree.create!(name: 'Michel’s apple tree', address: '9 rue des Monstres 69009 Lyon', description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.', price_per_year: 175, quantity_per_year: 5, fruit: 'apple', user: michel)

# helena = User.create!(first_name: 'Helena', last_name: 'Dupuis', email: 'helena@gmail.com', password: 'secret')

# Tree.create!(name: 'Helena’s apple tree', address: '5 place Michel Servet 69001 Lyon', description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.', price_per_year: 175, quantity_per_year: 5, fruit: 'apple', user: helena)
# puts 'Finished!'


puts "Cleaning database..."
Tree.destroy_all

puts 'Creating 5 fake users...'
john = User.create!(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'secret')
noah = User.create!(first_name: 'Noah', last_name: 'Smith', email: 'noah@gmail.com', password: 'secret')
oliver = User.create!(first_name: 'Oliver', last_name: 'Jones', email: 'oliver@gmail.com', password: 'secret')
george = User.create!(first_name: 'George', last_name: 'Williams', email: 'george@gmail.com', password: 'secret')
leo = User.create!(first_name: 'Leo', last_name: 'Brown', email: 'leo@gmail.com', password: 'secret')

puts 'Creating 5 fake trees...'
Tree.create!(
  name: 'John apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_per_year: 5,
  fruit: 'Apple',
  user: john
)

Tree.create!(
  name: 'Noah apple tree',
  address: '20 Oxford Street London',
  description: 'The sweet perfume of the sturdy, handsome cherry blossom tree and its delicate but breathtaking ivory flowers made the perfect location for meditation',
  price_per_year: 200,
  quantity_per_year: 2,
  fruit: 'Apricot',
  user: noah
)

Tree.create!(
  name: 'Oliver apple tree',
  address: 'Carnaby Street, London',
  description: 'The unusually short mandarn tree with the thick trunk by the edge of the forest is usually lively this time of year, but things have changed since families began to move to the new city.',
  price_per_year: 205,
  quantity_per_year: 5,
  fruit: 'Mandarin',
  user: oliver
)
Tree.create!(
  name: 'George apple tree',
  address: 'Brick Lane, London',
  description: 'It is a shame they cut down the lush fig tree near the center of the courtyard to complete the renovations. I understand the thick branches and trunk make great lumber, but it is not fair that such a bountiful tree was killed',
  price_per_year: 135,
  quantity_per_year: 5,
  fruit: 'Fig',
  user: george
)
Tree.create!(
  name: 'Leo apple tree',
  address: 'Abbey Road, London',
  description: '"It was a remarkable tree that defied human logic. It was as if it secretly lifted its cemented roots, shook its thorny branches and walked a few centimeters every nigh',
  price_per_year: 86,
  quantity_per_year: 5,
  fruit: 'Mirabellier',
  user: leo
)
puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  "0320000000",
    category:      "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  "0320000000",
    category:      "french"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  "0320000000",
    category:      "french"
  },
  {
    name:         "Chez GrandMa",
    address:      "12 rue des Tours 59800 Lille",
    phone_number:  "0320000000",
    category:      "french"
  },
  {
    name:         "Chez GrandPa",
    address:      "13 rue des Tours 59800 Lille",
    phone_number:  "0320000000",
    category:      "french"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

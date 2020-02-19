# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
rental_units_seed = [
  {
    rental_type: 'rentals',
    rental_id: 'grand-old-mansion',
    title: 'Grand Old Mansion',
    owner: 'Veruca Salt',
    city: 'San Fran',
    lat: 37,
    lng: -122,
    category: 'Estate',
    bedrooms: 15,
    image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg',
    description: 'This grand old mansion sits on over 100 acres of rolling hills and dense redwood forests.'
  }, {
    rental_type: 'rentals',
    rental_id: 'grand-old-mansion',
    title: 'Grand Old Mansion',
    owner: 'Veruca Salt',
    city: 'San Fran',
    lat: 37,
    lng: -122,
    category: 'Estate',
    bedrooms: 15,
    image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg',
    description: 'This grand old mansion sits on over 100 acres of rolling hills and dense redwood forests.'
  }, {
    rental_type: 'rentals',
    rental_id: 'grand-old-mansion',
    title: 'Grand Old Mansion',
    owner: 'Veruca Salt',
    city: 'San Fran',
    lat: 37,
    lng: -122,
    category: 'Estate',
    bedrooms: 15,
    image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg',
    description: 'This grand old mansion sits on over 100 acres of rolling hills and dense redwood forests.'
  }, {
    rental_type: 'rentals',
    rental_id: 'grand-old-mansion',
    title: 'Grand Old Mansion',
    owner: 'Veruca Salt',
    city: 'San Fran',
    lat: 37,
    lng: -122,
    category: 'Estate',
    bedrooms: 15,
    image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg',
    description: 'This grand old mansion sits on over 100 acres of rolling hills and dense redwood forests.'
  }
]
RentalUnit.destroy_all
RentalUnit.create(rental_units_seed)

p "Created #{RentalUnit.count} rental units"

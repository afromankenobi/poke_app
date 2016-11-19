# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Pokemon.destroy_all
Catched.destroy_all

Pokemon.create(
  [
    {
      name: 'pikachu',
      description: 'tipo trueno',
      remote_photo_url: 'https://img.pokemondb.net/artwork/pikachu.jpg'
    },
    {
      name: 'squirtle',
      description: 'tipo agua',
      remote_photo_url: 'https://img.pokemondb.net/artwork/squirtle.jpg'
    },
    {
      name: 'charmander',
      description: 'tipo fuego',
      remote_photo_url: 'https://img.pokemondb.net/artwork/charmander.jpg'
    },
    {
      name: 'bulbasaur',
      description: 'tipo hierba',
      remote_photo_url: 'https://img.pokemondb.net/artwork/bulbasaur.jpg'
    },
    {
      name: 'zapdos',
      description: 'tipo trueno',
      remote_photo_url: 'https://img.pokemondb.net/artwork/zapdos.jpg'
    },
    {
      name: 'ninetales',
      description: 'tipo fuego',
      remote_photo_url: 'https://img.pokemondb.net/artwork/ninetales.jpg'
    }
  ]
)

User.create(
  [
    {
      name: 'Jorge',
      email: 'jv.vargass@gmail.com',
      password: '12345678',
      role: 'admin'
    },
    {
      name: 'usuario2',
      email: 'usuario2@usuario.com',
      password: '12345678',
      role: 'trainer'
    }
  ]
)

10.times do
  Catched.create(
    user: User.select(:id).order('RANDOM()').first,
    pokemon: Pokemon.select(:id).order('RANDOM()').first,
    level: rand(1..10)
  )
end

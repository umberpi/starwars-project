# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'



puts 'Cleaning database...'
Character.destroy_all

puts 'Getting Star Wars characters...'

(1..9).each do |page|
  print(page.to_s)
  url="https://swapi.co/api/people/?page=" + page.to_s
  my_request = RestClient.get(url)

  results_array = JSON.parse(my_request)["results"]

  results_array.each do |character|
    Character.create(
        name: character["name"],
        height: character["height"],
        mass: character["mass"],
        hair_color: character["hair_color"],
        skin_color: character["skin_color"],
        eye_color: character["eye_color"],
        birth_year: character["birth_year"],
        gender: character["gender"],
        url: character["url"])
  end

end
puts 'Finished!'

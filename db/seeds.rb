require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all
50.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movies::HarryPotter.quote,
    poster_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.polygon.com%2F23668971%2Fharry-potter-reboot-hbo-series-tv&psig=AOvVaw0fZgz-1WAp6zifO1muctWH&ust=1683473537481000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPiL9OOB4f4CFQAAAAAdAAAAABAE",
    rating: rand(1..5)

  )
  puts movie

end

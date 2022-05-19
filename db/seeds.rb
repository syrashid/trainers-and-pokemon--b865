puts "Clearing Pokemon World 💣"

if Rails.env.development?
  Trainer.destroy_all
end

puts "Creating Trainers"
ash = Trainer.create!(
  name: "Ash Ketchum",
  banner_url: "https://www.thefactsite.com/wp-content/uploads/2017/09/ash-ketchum-facts-pokemon.jpg"
)

gary = Trainer.create!(
  name: "Gary Oak",
  banner_url: "https://www.tvovermind.com/wp-content/uploads/2018/08/GarySquirtle.jpg"
)

brock = Trainer.create!(
  name: "Brock",
  banner_url: "https://static1.srcdn.com/wordpress/wp-content/uploads/2016/11/Brock-Pokemon-Series.jpg"
)
puts "Created #{Trainer.count} Pokemon Trainers 🏋️‍♂️"

puts "Creating Pokemon"
Pokemon.create!(
  name: "Bubbles",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png",
  trainer: ash
)

Pokemon.create!(
  name: "Flint",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png",
  trainer: ash
)

Pokemon.create!(
  name: "Ivy",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png",
  trainer: ash
)

Pokemon.create!(
  name: "Sparky",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png",
  trainer: ash
)

Pokemon.create!(
  name: "Arcanine",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png",
  trainer: gary
)

Pokemon.create!(
  name: "Onix",
  image_url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/095.png",
  trainer: brock
)
puts "Created #{Pokemon.count} Pokemon 🐢"


puts "Finished Seeding 🌱"
names = %w(Water\ Gun Thunderbolt Ember Dig Tackle Body\ Slam)
# ["Water Gun", "Thunderbolt"]

names.each do |move|
  Move.create!(name: move)
end

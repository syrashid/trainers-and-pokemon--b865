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

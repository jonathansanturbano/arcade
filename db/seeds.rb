puts "Deleting all seeds..."

Game.destroy_all && Player.destroy_all if Rails.env.development?

puts "Creating seeds..."

categories = ["Mathematical", "Board", "Puzzle", "Strategy", "Action", "PVP"]

game_names = ["Sudoku", "Zelda", "Candy Crush", "Pokemon", "7 Wonders", "Counter Strike", "Dota", "League of Legends", "Monopoly", "Scribbble"]

game_names.each do |game_name|
  game = Game.create!(
    name: game_name,
    description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate rem saepe nulla aliquid, accusantium numquam, quis placeat labore ipsum molestiae quasi consequatur odio sit perferendis sequi sint laborum nesciunt porro.",
    category: categories.sample
  )
  puts "#{game.name} created 🌱"
end

players = [
  { username: "Micah123", age: 25, photo_url: "https://kitt.lewagon.com/placeholder/users/lavithian" },
  { username: "Chris34", age: 25, photo_url: "https://kitt.lewagon.com/placeholder/users/CRaph97" },
  { username: "Kurt53", age: 25, photo_url: "https://kitt.lewagon.com/placeholder/users/KurtLIU042" },
  { username: "Rylan4232", age: 25, photo_url: "https://kitt.lewagon.com/placeholder/users/Rylo-13" },
  { username: "Jon545", age: 25, photo_url: "https://kitt.lewagon.com/placeholder/users/jonathansanturbano" }
]

players.each do |player|
  player = Player.create!(player)
  puts "#{player.username} created 🌱"
end

micah = Player.first
chris = Player.second

sudoku = Game.first

Participation.create!(player: micah, game: sudoku)
Participation.create!(player: chris, game: sudoku)

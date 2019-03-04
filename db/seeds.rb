User.create(email: "test@test.com", password: "password")

Game.create(name: "Warhammer")

Race.create(name: "Orcs", game_id: 1)
Race.create(name: "Dwarves", game_id: 1)
Race.create(name: "Undead", game_id: 1)
Race.create(name: "Chaos Warriors", game_id: 1)
Race.create(name: "Elves", game_id: 1)

puts "seeded."
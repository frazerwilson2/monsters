namespace :db do
  desc "add the admin user"
  task populate: :environment do
  add_admin
   add_others
  add_monsters
  end
end

def add_admin
  admin = User.create!(name: "the manager",
                         email: "frazer@email.com",
                         admin: true)
end

def add_others
  tom = User.create!(name: "Tom", admin: false)
  dick = User.create!(name: "Dick", admin: false)
  harry = User.create!(name: "Harry", admin: false)
end

def add_monsters
  armadillo = Monster.create!(name: "Armadillo", bio: "like a shell thing")
  bird = Monster.create!(name: "Bird", bio: "a pecker")
  butterfly = Monster.create!(name: "Butterfly", bio: "with wings")
  cheetah = Monster.create!(name: "Cheetah", bio: "it cheats")
  crab = Monster.create!(name: "Crab", bio: "ew, a crab")
  crocodile = Monster.create!(name: "Crocodile", bio: "sneaky")
  deer = Monster.create!(name: "Deer", bio: "a runner")
  goldfish = Monster.create!(name: "Goldfish", bio: "wet")
  kangaroo = Monster.create!(name: "Kangaroo", bio: "good meat")
  lizard = Monster.create!(name: "Lizard", bio: "slimy")
  ocelot = Monster.create!(name: "Ocelot", bio: "howlin!")
  pig = Monster.create!(name: "Pig", bio: "smelly")
  rabbit = Monster.create!(name: "Rabbit", bio: "lucky")
  snake = Monster.create!(name: "Snake", bio: "wiggly")
  wildcat = Monster.create!(name: "Wild Cat", bio: "gross")
end
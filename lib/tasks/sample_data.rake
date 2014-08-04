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
  monkey = Monster.create!(name: "A sort of Monkey Thing", bio: "a bit like King Kong")
  lizard = Monster.create!(name: "Lizard Thing", bio: "A Godzilla type")
  rabbit = Monster.create!(name: "RABBITFACE", bio: "Unknown")
  slimy = Monster.create!(name: "Slimy", bio: "It's all slimy")
  legs = Monster.create!(name: "Big Legs", bio: "Those some fuckin big legs..")
end
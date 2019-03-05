require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or find_or_create_byd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by(name: 'Luke', movie: movies.first)
#
puts "users"
10.times do
  User.find_or_create_by(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.free_email,
    password_digest: Faker::Internet.password(8, 10),
    img_url: Faker::LoremPixel.image("150x150", 'people')
  )
end
puts "end"

puts "teams"
2.times do
  Team.find_or_create_by(name: Faker::Lorem.word, img_url: Faker::LoremPixel.image("150x150", 'people') )
end
puts "end"

teams = Team.all.sample(2)
users = User.all.sample(10)

puts "team members"
TeamMember.find_or_create_by(
  user_id: users[0].id,
  team_id: teams[0].id,
  admin: true
)
TeamMember.find_or_create_by(
  user_id: users[1].id,
  team_id: teams[0].id
)
TeamMember.find_or_create_by(
  user_id: users[2].id,
  team_id: teams[0].id
)
TeamMember.find_or_create_by(
  user_id: users[3].id,
  team_id: teams[0].id
)
TeamMember.find_or_create_by(
  user_id: users[4].id,
  team_id: teams[0].id
)
TeamMember.find_or_create_by(
  user_id: users[5].id,
  team_id: teams[1].id,
  admin: true
)
TeamMember.find_or_create_by(
  user_id: users[6].id,
  team_id: teams[1].id
)
TeamMember.find_or_create_by(
  user_id: users[7].id,
  team_id: teams[1].id
)
TeamMember.find_or_create_by(
  user_id: users[8].id,
  team_id: teams[1].id
)
TeamMember.find_or_create_by(
  user_id: users[9].id,
  team_id: teams[1].id
)
puts "end"

puts "boards"
2.times do
  Board.find_or_create_by(
    team_id: teams[0].id,
    name:  Faker::Lorem.word
  )
  Board.find_or_create_by(
    team_id: teams[1].id,
    name:  Faker::Lorem.word
  )
end
puts "end"

b = Board.all.sample(4)

puts "lists"
3.times do
  List.find_or_create_by(
    board_id: b[0].id,
    name: Faker::Lorem.word
  )
  List.find_or_create_by(
    board_id: b[1].id,
    name: Faker::Lorem.word
  )
  List.find_or_create_by(
    board_id: b[2].id,
    name: Faker::Lorem.word
  )
  List.find_or_create_by(
    board_id: b[3].id,
    name: Faker::Lorem.word
  )
end
puts "end"

l1 = b[0].lists.sample(3)
l2 = b[1].lists.sample(3)
l3 = b[2].lists.sample(3)
l4 = b[3].lists.sample(3)

puts "tasks"
5.times do
  colors = ["red", "blue", "green", "orange", "yellow"]
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l1[0].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l1[1].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l1[2].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l2[0].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l2[1].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l2[2].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l3[0].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l3[1].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l3[2].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l4[0].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l4[1].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
  Task.find_or_create_by(
    name: Faker::Lorem.word,
    list_id: l4[2].id,
    description:Faker::Lorem.paragraph,
    due_date: Faker::Date.forward(10),
    labels: colors.sample(5)[0]
  )
end
puts "end"
puts "end of seed"

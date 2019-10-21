
 2.times do
   t = Team.create(name: Faker::Name.name, city: Faker::Address.city)
   p t.errors
 end

10.times do
  player = Player.create(name: Faker::Name.name, height: rand(5.0..6.3).round(2))
  player.contracts.create(team_id: Team.all.pluck(:id).shuffle.first, term: rand(12..24), deal_value: rand(100000..10000000))
  p player.errors
end



#############################################################################

u = User.new(name: Faker::Name.name)
u.save(validate: false)

50.times do
  u = User.create(name: Faker::Name.name, manager: User.limit(10).shuffle.first)
  p u.errors
end

##########################################################

category_cs = Category.create(name: "Computer Science")
category_ec = Category.create(name: "Electronics")
category_me = Category.create(name: "Mechanical")
category_math = Category.create(name: "Mathematics")

a1 = u.articles.create(category: category_cs, name: "Introduction to computer Science", description: "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ")
a2 = u.articles.create(category: category_ec, name: "Introduction to elctronics", description: "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ")
a3 = u.articles.create(category: category_cs, name: "Ruby on Rails", description: "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ")

a1.comments.create(user_id: 1, description: "test")
a1.comments.create(user_id: 2, description: "test")

a1.tags.create(name: "computer Science")
a1.tags.create(name: "ruby")
a1.tags.create(name: "Learning")

###############################################

300.times do
  f = Follow.create(follower_id: rand(1..50), followee_id: rand(1..50))
  p f.errors
end




###################
#user_hash = []
#5.times do
#  user_hash << {name: Faker::Name.name, created_at: Time.now, updated_at: Time.now} 
#end

#User.insert_all(user_hash)

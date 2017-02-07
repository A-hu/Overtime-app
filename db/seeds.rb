@user = User.create(email: "hihi@hi.com", password: "123123", first_name: "hihi", last_name: "yes")

puts "1 user created"
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"

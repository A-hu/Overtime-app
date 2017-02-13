@user = User.create(email: "hihi@hi.com",
                    password: "123123",
                    first_name: "hihi",
                    last_name: "yes",
                    phone: "3474640201")

puts "1 user created"

AdminUser.create(email: "admin@hi.com",
                 password: "123123",
                 first_name: "admin",
                 last_name: "yes",
                 phone: "3474640201")

puts "1 adminuser created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"

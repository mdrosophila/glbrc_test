# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
              
3.times do |n|
  login = "user#{n+1}"
  password = "glbrcpass"
  User.create!( login: login, 
              password: password,
              password_confirmation: password)
end

Application.create!(name: "App1", 
                    description: "Application 1",
                    color: "Red",
                    defaultStatus: "Yes")
Application.create!(name: "App2", 
                    description: "Application 2",
                    color: "Blue",
                    defaultStatus: "No")
Application.create!(name: "App3", 
                    description: "Application 3",
                    color: "Yellow",
                    defaultStatus: "Yes")
Application.create!(name: "App4", 
                    description: "Application 4",
                    color: "Green",
                    defaultStatus: "No")
Application.create!(name: "App5", 
                    description: "Application 5",
                    color: "Purple",
                    defaultStatus: "No")

# Add app to user
users = User.all
apps = Application.all
app1 = apps[0]
app3 = apps[2]
users.each do |user|
  user.addApp(app1)
  user.addApp(app3)
end
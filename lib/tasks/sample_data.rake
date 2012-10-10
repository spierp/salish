namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Peter Spier", 
                  email: "spierp@gmail.com",
                  password: "foobar",
                  password_confirmation: "foobar")
    admin.toggle!(:admin)              
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.org"
      password = "password"
      User.create!(name: name, 
                  email: email,
                  password: password,
                  password_confirmation: password)
    end
  end
end
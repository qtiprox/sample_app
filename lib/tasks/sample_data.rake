namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
  end
end

def make_users
  admin = User.create!(name:     "Quintin Plumlee",
                       email:    "qtiprox@gmail.com",
                       password: "QrockS12",
                       password_confirmation: "QrockS12",
                       admin: true)
end

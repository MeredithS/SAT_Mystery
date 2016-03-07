users = [
  { email: "babwapple@gmail.com",
    password: 'test', password_confirmation: 'test'
    first_name: "Janice",
    last_name: "Knope"
  },
  { email: "babwapple@gmail.com",
    password: 'test', password_confirmation: 'test'
    first_name: "Richard",
    last_name: "Dort"
  }
]

users.each do |user|
  Users.create(user);
end


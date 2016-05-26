# Generate users
require 'bcrypt'

@password = BCrypt::Password.create("password123", :cost => 13)

users = User.create([{name: 'Brad', email: 'brad@example.com', password_digest: @password},
  {name: 'Luke', email: 'luke@example.com', password_digest: @password},
  {name: 'Will', email: 'will@example.com', password_digest: @password},
  {name: 'Tom', email: 'tom@example.com', password_digest: @password},
  {name: 'Jason', email: 'jason@example.com', password_digest: @password},
  {name: 'Stephen', email: 'stephen@example.com', password_digest: @password},
  {name: 'Niall', email: 'niall@example.com', password_digest: @password},
  {name: 'Ephrem', email: 'ephrem@example.com', password_digest: @password},
  {name: 'Yogi', email: 'yogi@example.com', password_digest: @password},
  {name: 'Yang', email: 'yang@example.com', password_digest: @password}
  ])


# Generate posts
# Post.create(content: 'something; cos I embody coolness', user: users[3])

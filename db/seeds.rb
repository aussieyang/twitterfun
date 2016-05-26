# Generate users
require 'bcrypt'

User.delete_all

@password = BCrypt::Password.create("password123", :cost => 13)

users = User.create([{name: 'Brad', email: 'brad@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/media/AAEAAQAAAAAAAATyAAAAJDY5NzA4MjhiLWIwMjktNDIzMy05NmVjLWIwZjQ5OTA3MTZlOQ.jpg'},
  {name: 'Luke', email: 'luke@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAbUAAAAJGU3MWRkNzExLWQxNjctNDI0OC04MTNhLTAwNDc2MmRkOTMwYw.jpg'},
  {name: 'Will', email: 'will@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/media/p/8/005/065/277/3e4db4c.jpg'},
  {name: 'Tom', email: 'tom@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAQXAAAAJDYwYzRlYzkzLWEzZDUtNGU1Ny05NzNlLTIxMjQzZmNiZDliMg.jpg'},
  {name: 'Jason', email: 'jason@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAZ9AAAAJDU2ZTEwNmMwLWM4OWYtNGM4MC05ZTRjLTNiMzQ3MWE0YTdjZg.jpg'},
  {name: 'Stephen', email: 'stephen@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAbsAAAAJDY1MDg2ZDIxLTgyNDYtNDE5OC1hMTY0LWZmZTcyZTJhYzM2NA.jpg'},
  {name: 'Niall', email: 'niall@example.com', password_digest: @password, imgurl: 'https://p1.zmtcdn.com/image/data/user_profile_pictures/128/0bba5982cf1349c749f7e671f1c6e128_400_thumb.jpg'},
  {name: 'Ephrem', email: 'ephrem@example.com', password_digest: @password, imgurl: 'https://lh3.googleusercontent.com/-WqY_An4X2oo/AAAAAAAAAAI/AAAAAAAAAAA/xU_SKP3M8SI/photo.jpg'},
  {name: 'Yogi', email: 'yogi@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/066/2af/3b4e0f6.jpg'},
  {name: 'Yang', email: 'yang@example.com', password_digest: @password, imgurl: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/3/000/1af/12b/3046091.jpg'}
  ])


# Generate posts
# Post.create(content: 'something; cos I embody coolness', user: users[3])

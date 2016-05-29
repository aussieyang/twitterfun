# Sample App for CRUD Web App

1. Clone to your own computer (make sure you don't clone into a git initialized repo - type 'git status' to check)
  ```
  1. Find a good directory, cd into it and 'git clone *insert URL here*'
  ```
2. Run the following in terminal from inside the app folder:
  ```
  1. 'bundle install'
  2. 'rake db:create'  -  skip this if you have already created the DB
  3. 'rake db:migrate'
  4. 'rake db:seed'
  ```
3. Run 'rails s' in your terminal from inside the app folder
4. Go to localhost:3000/signin and sign in with a username and password found in 'seeds.rb'
5. See the step by step build of the app here:
  ```
  1. [Click here](https://github.com/aussieyang/twitterfun/commits/master)
  ```

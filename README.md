Reduced-Reddit
A simplified version of Reddit to allow users the ability to create an account to store posts but create posts anoynmously.

Description
Reddit is one of mine, and the worlds favorite places to receive unbiased information. In a world full of sponsorships, and story-telling, it helps to get input from someone just wanting to help it.


1. Check out the repository
git clone git@github.com:trksprkz/reddit.git
2. Create database.yml file
Copy the sample database.yml file and edit the database configuration as required.

cp config/database.yml.sample config/database.yml
3. Create and setup the database
Run the following commands to create and setup the database.

bundle exec rake db:create
bundle exec rake db:setup
4. Start the Rails server
You can start the rails server using the command given below.

bundle exec rails s
And now you can visit the site with the URL http://localhost:3000

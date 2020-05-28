Prerequisites
The setups steps expect following tools installed on the system.

Github
Ruby 2.6.6
Rails 6.0.3
Sqlite

1. Check out the repository
git clone https://github.com/ankitkpatel593/event_management.git

2. Create and setup the database
Run the following commands to create and setup the database.

bundle exec rake db:create
bundle exec rake db:setup
3. Start the Rails server
You can start the rails server using the command given below.

bundle exec rails s
And now you can visit the site with the URL http://localhost:3000

About the app:
The app is a simple ticketing platform which displays a bunch of
events. Users can register or login. They can visit an event page, attend an
event and see who else is attending.

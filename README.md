# Bookmarks

## Database setup
### Live DB

Connect to psql
```
CREATE DATABASE bookmark_manager;
\c bookmark_manager;
```
Execute table set-up query from db/migrations/01_create_bookmarks_table.sql

### Test DB
Connect to psql
```
CREATE DATABASE bookmark_manager_test;
\c bookmark_manager;
```
Execute table set-up query from db/migrations/01_create_bookmarks_table.sql

**Database to connect to is chosen from an environment variable** 
```ruby
ENV['bookmark_challenge_db']
```
**Environment variable is set in app.rb, and overridden for the test environment in spec_helper.rb**


## User Stories

### Requirement
Show a list of bookmarks

```
As a user
So that I can find interesting content
I want to see a list of bookmarks

As a user
So that I can choose an interesting bookmark
I want to see a name for each bookmark

As a user
So that I can check where I'm going
I want to see the URL for each bookmark

As a user
So that I can get to interesting content
I want to click on a bookmark and go to that webpage
```

## Routes
Client Action: User visits domain homepage in web browser
Request: GET \
Server Action:
Response: HTML containing hyperlinked list of bookmarks with names and URLS

## Lib Domain
### Bookmark
**Attributes:** Name, URL
**Messages:** 

#name => string, e.g. "How to set up a SQL DB"
#url => string, e.g. "everythingaboutsql.com/how-to-set-up/"

### BookmarkList
**Attributes:** List
**Messages:** 

#list => array, e.g. `[bookmark1, bookmark2, bookmark3]`
#pretty_list => string, new line separated, e.g. "How to set up a SQL DB: everythingaboutsql.com/how-to-set-up/\nGoogle: google.co.uk/"


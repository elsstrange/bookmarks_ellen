# Bookmarks

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


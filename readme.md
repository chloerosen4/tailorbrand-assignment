# Server
### the basics
- I created a middleware so the API key would not be revelad
- It would be better Sinatra over Rails because it is a tiny server, but wanted to showcase rails
- In real life app I would have either used a loose framework like Sinatra or X, or removed unnecssary rails components
- I would use rails if I'll know I'll want to expand to project
- I specified in Gemfile the ruby version to prevent code collisions
- specified the exact version of sinatra to avoid code collisions
- used bundler to follow the heroku's guideline
- used the Airtbale gem, which is easier to use than a usual HTTP client
- I chose the "airrecord" as oppose to the official one because it was last updated 2 months ago as oppsed to 4 years ago and has a relative similar amount of stars and forks
- airrecord also uses object oriented approach
- use rubocop for styling
- could handle image thumbnails
- could add "v1"
- used jbuilder, considered json sanitizer
- add rspec

def self.all_active
    all(filter: '{Status} = "Published"', sort: { 'Publish date' => 'desc' })
  end

### Installing

- for the porpuse of this demo and fast boot I added the .env file to this repo. however on production environment each developer should have his or her own .env file, that looks like this:
```
AIRTABLE_KEY=xxxxxx
```


### Client
- we use client side pagintation, a more resource sensitive approcach...

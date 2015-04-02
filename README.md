# Bideo
========

## by Lauren Marcus & Debbie Cravey

Bideo is a texting app that relies on Twilio's API. Users can send sms messages from the app, as well as create a dynamic address book of their frequent contacts.

Installation
------------

Install Bideo by first cloning the repository.

```
$ git clone https://github.com/dacravey/bideo.git
```


To create database, open terminal and run

```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Dependencies
------------
Install the following gems:
* 'rails', '4.2.1'
* 'pg'
* 'sass-rails', '~> 5.0'
* 'uglifier', '>= 1.3.0'
* 'coffee-rails', '~> 4.1.0'
* 'jquery-rails'
* 'turbolinks'
* 'jbuilder', '~> 2.0'
* 'sdoc', '~> 0.4.0', group: :doc

* 'byebug'
* 'web-console', '~> 2.0'
* 'spring'
* 'dotenv-rails'
* 'rspec-rails'
* 'pry'
* 'rest-client'
* 'quiet_assets'
* 'launchy'

* 'shoulda-matchers'
* 'factory_girl_rails'
* 'capybara'
* 'poltergeist'
* 'database_cleaner'
* 'phantom'
* 'vcr'
* 'webmock

NOTE: Twilio credentials should be stored in a .env file in order to keep them secure.



Run the App
------------
*start postgresql
*open browser to localhost:3000


Contribute
----------
- Issue Tracker: github.com/dacravey/bideo/issues
- Source Code: github.com/dacravey/bideo

Support
-------

If you are having issues, please let us know at: cinder.the.rogue@gmail.com

Bug reports
===========

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help with fixing the possible bug. I also welcome your help if you choose to fork and send a pull request.

https://github.com/dacravey/bideo/issues

License
=======

MIT License. Copyright 2015 Lauren Marcus & Debbie Cravey

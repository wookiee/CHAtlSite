CocoaHeads Atlanta Web Site
==========================

Welcome to the CocoaHeads Atlanta web site project. The site is currently based on [Ruby on Rails](http://rubyonrails.org) version 3.2.x.

This is a ground up rebuild of the current [cocoaheadsatlanta.org](http://cocoaheadsatlanta.org) site. 

I. Developer Platform Dependencies
-------------------------------

At present the project requires a few OS X 10.8 specific gems used for running [RSpec](https://github.com/rspec/rspec-rails) tests via [Guard](https://github.com/guard/guard-rspec).

II. Getting Started
-------------------

### 1. Post Clone Setup

This site relies on account authentication through external services via OAuth or OpenID. It currently has no facility for local username/password style logins. In order to protect the secret authentication credential the **CUSTOMER\_KEY** and **CUSTOMER\_SECRET** for each OAuth provider is never committed directly to the repository.

You can find an example configuration file in...

    ./config/examples/application.yml

Begin by copying the configuration file from the root of the project wrapper folder...

    cp ./config/examples/application.yml ./config/

### 2. Install Gem Dependencies

    bundle install

### 3. Prepare the Database Configuration File

The datebase.yml file is not version controlled so begin by copying the example file...

    cp ./config/examples/database.yml ./config/

### 4. Setup Development Database

Create your development database. I use SQLite for development. You are free to use whatever database you choose. Just make sure all code is compatilbe with SQLite, so no database specific SQL should be used.

    rake db:migrate

III. Ignoring Operating System and Text Editor Temporary Files
--------------------------------------------------------------

Please be sure to create a global .gitignore file to prevent commiting files used by OS X or your chosen text editor.

    git config --global core.excludesfile ~/.gitignore_global

Here is what my global ignore file contains as an example:

    .DS_Store
    *~
    .*~
    *~.*
    *.o
    *.lo
    *.la
    .*.rej
    *.rej

IV. Automated Testing
----------------------

### 1. RSpec

It is **required** that [RSpec](https://github.com/rspec/rspec-rails) specs are provided with all [pull requests](https://help.github.com/articles/using-pull-requests) to be considered for inclusion into the official project source code.

### 2. Factory Girl

The project uses [factory\_girl](https://github.com/thoughtbot/factory\_girl\_rails) for fixture replacement so please take some time to familiarize yourself with that if necessary.

CocoaHeads Atlanta Web Site
==========================

Welcome to the CocoaHeads Atlanta web site project. The site is currently based on [Ruby on Rails](http://rubyonrails.org) version 3.2.x.

This is a ground up rebuild of the current [cocoaheadsatlanta.org](http://cocoaheadsatlanta.org) site. 

The project is available on Pivotal Tracker so please request to join if interested in helping: [Project](https://www.pivotaltracker.com/projects/23115).

I. Developer Platform Dependencies
-------------------------------

Like most projects there have been some dependency choices made for convenience and familarity. However, if you have issue with any of the choices please don't hesitate to suggest alternatives.

For example I chose to use [RSpec](https://github.com/rspec/rspec-rails) as the testing framework, [Guard](https://github.com/guard/guard-rspec) to report spec pass/fail status, [terminal-notifier-guard](https://github.com/Springest/terminal-notifier-guard) for nifty OS X Notification Center integration, and [Factory Girl](https://github.com/thoughtbot/factory\_girl\_rails) for fixture replacement.

**Notice:** A few of these choices are OS X 10.8 specific. So if this causes any issues for anyone please either add the platform specific condtional loading to the Gemfile or post a bug to the [Pivotal Tracker Project](https://www.pivotaltracker.com/projects/23115) and I'll add that. I am currently running under the assumption that everyone interested in contributing is already running a Mac with 10.8 installed.

II. Getting Started
-------------------

### 1. Protecting Secrets

This site relies on account authentication through external services via OAuth or OpenID. It currently has no facility for local username/password style logins. In order to protect the secret authentication credentials the **CUSTOMER\_KEY** and **CUSTOMER\_SECRET** for each OAuth provider is never committed directly to the repository.

You can find an example configuration file in...

    ./config/examples/application.yml

Begin by copying the configuration file (starting from the root of the project wrapper folder) from the example folder to the standard config folder as shown below:

    cp ./config/examples/application.yml ./config/

Also copy the example database.yml from examples to the config folder. The datebase.yml file is not version controlled for similar reasons, both to protect production database settings and to allow develoers to have some flexibility what database to use.

Again from the root of the project:

    cp ./config/examples/database.yml ./config/

### 2. Install Gem Dependencies

    bundle install

### 3. Setup Development Database

Create your development database. I use SQLite for development. You are free to use whatever database you choose. Just make sure all code is compatilbe with SQLite, so no database specific SQL please.

    rake db:migrate

III. Ignoring Operating System and Text Editor Temporary Files
--------------------------------------------------------------

Please be sure to create a global .gitignore file to prevent commiting files used by OS X, or your chosen text editor.

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

It is **highly recommended** that [RSpec](https://github.com/rspec/rspec-rails) specs are provided with all [pull requests](https://help.github.com/articles/using-pull-requests) to be considered for inclusion into the official project source code.

### 2. Factory Girl

The project uses [Factory Girl](https://github.com/thoughtbot/factory\_girl\_rails) for fixture replacement so please take some time to familiarize yourself with that if necessary.

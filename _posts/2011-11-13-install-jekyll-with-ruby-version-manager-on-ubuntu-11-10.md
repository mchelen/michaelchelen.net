---
layout: article
uuid: 651f1da1-9c42-49bb-9001-be7b8f99b56d
title: Install Jekyll with Ruby Version Manager on Ubuntu 11.10
name: install-jekyll-with-ruby-version-manager-on-ubuntu-11.10
created_at: 2011-11-13
updated_at: 2012-05-01
categories: git jekyll ruby ubuntu
---

Jekyll generates a complete website such as a blog from local text files. The generated files can be served by any standard webserver. Markup languages such as Markdown are supported through Gems. Jekyll is made to be compatible with version control systems such as Git. Tested on Ubuntu Server 11.10 Oneiric

<!--more--> 

    
# RVM #
The [Ruby Version Manager](https://rvm.io/) can be used to install the latest version of Ruby on Ubuntu.

Although there is a Ruby package for Ubuntu [an error exists](https://github.com/TwP/directory_watcher/issues/10#issuecomment-2327743) between the directory_watcher gem and RubyGems 1.3.7.

### Update System ###
Make sure the system is fully updated.
    sudo apt-get update && sudo apt-get dist-upgrade

### Install RVM Dependencies ###
The RVM install script requires CURL
    sudo apt-get install curl
### RVM Install Script###
The [RVM install](https://rvm.io/rvm/install/) script will install the stable version of RVM for the current user. After RVM is installed Ruby will automatically be installed.

   curl -L get.rvm.io | bash -s stable


Enable RVM commands in the current shell.
    source ~/.rvm/scripts/rvm
    
    
### Install Ruby Dependencies ###
Use `rvm requirements` to generate a list of Ruby dependencies. In Ubuntu 11.10 it is:

    sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

# Ruby #

rvm install ruby

### Test Ruby
    ruby -v
Should say something like:
ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-linux]


# Jekyll

### Install Jekyll
    gem install jekyll --no-rdoc --no-ri
  
# Optional #

### Pygments
Pygments allows syntax highlighting.
    sudo apt-get install python-pygments

## Markdown
Two alternative Markdown renderers are Rdiscount and Kramdown.
### Rdiscount
    gem install rdiscount --no-rdoc --no-ri
    
### Kramdown
    gem install kramdown --no-rdoc --no-ri

### SASS and rb-inotify
Needed for some themes.
        gem install sass --no-rdoc --no-ri
        gem install rb-inotify --no-rdoc --no-ri


### Clone Repository ###
Download the latest copy of your website. Use the URL for your project.


Read-only access to the repository, such as on servers.
    git clone git://github.com/mchelen/michaelchelen.net.git


Write access to the repository, for when creating and editing web pages.
    git clone git@github.com:mchelen/michaelchelen.net.git

### Start Jekyll ###

    cd michaelchelen.net

    jekyll

The site will be run according to the settings in the '_config.yml' file.

These can be overriden through the command line. For example the website can be viewed through the Jekyll server instead of installing another web server such as Apache.

    jekyll --server







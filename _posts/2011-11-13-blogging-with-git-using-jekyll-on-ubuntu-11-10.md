---
layout: article
uuid: 651f1da1-9c42-49bb-9001-be7b8f99b56d
title: Blogging with Git using Jekyll on Ubuntu 11.10
name: blogging-with-git-using-jekyll-on-ubuntu-11-10
created_at: 2011-11-13
updated_at: 2011-11-13
categories: git jekyll ruby ubuntu
---

Jekyll generates a complete website from local text files. The generated files can be served by any standard webserver. The template system supports a blog style layout. Specialized languages such as Markdown are supported through Gems. Jekyll is compatible with Git version control. Tested on Ubuntu Server 11.10 Oneiric

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

    curl -L get.rvm.io | bash -s stable --ruby



### Install Ruby Dependencies ###
The additional packages are required for compilation of Ruby are shown during the install script. 


Press "q" to continue

    sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

Use `rvm requirements` to generate this list again.


Enable RVM commands in the current shell.
    source ~/.rvm/scripts/rvm

# Ruby #

### Test Ruby
    ruby -v

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
Needed for some themes
        gem install sass --no-rdoc --no-ri
        gem install rb-inotify --no-rdoc --no-ri

### GSL Gem Bug
The GSL Gem (used for faster LSI) is [not working](https://rubyforge.org/tracker/index.php?func=detail&aid=29255&group_id=285&atid=1167) with GSL 1.15. There is [a patch](https://rubyforge.org/tracker/index.php?func=detail&aid=29353&group_id=285&atid=1169) which has not been tested.

If the bug were fixed, this would be the install procedure:
    sudo apt-get install libgsl0-dev
    gem install gsl --no-rdoc --no-ri

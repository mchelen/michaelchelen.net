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
The [Ruby Version Manager](http://beginrescueend.com/) can be used to install the latest version of Ruby on Ubuntu.

Although there is a Ruby package for Ubuntu [an error exists](https://github.com/TwP/directory_watcher/issues/10#issuecomment-2327743) between the directory_watcher gem and RubyGems 1.3.7.


### Install RVM ###
The [RVM install](https://rvm.beginrescueend.com/rvm/install/) script will install RVM for the current user.

    bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

# Ruby #
### Install Dependencies ###
These packages are required for working compilation of Ruby. Use `rvm requirements` to generate this list yourself.

    sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

### Install Ruby
    rvm install ruby-1.9.3

### Select Version
Select the Ruby Version to use.
    rvm use ruby-1.9.3

### Test Ruby
    ruby -v

# Jekyll

### Install Jekyll
    gem install jekyll --no-rdoc --no-ri

### Pygments
Pygments allows syntax highlighting.
    sudo apt-get install python-pygments
There is a conflict between Jekyll and Liquid 2.3.0 which can be fixed by [using Liquid 2.2.2](https://github.com/mojombo/jekyll/issues/422#issuecomment-2777592)
    gem uninstall liquid && gem install liquid -v 2.2.2
  
# Optional #

## Markdown
Two alternative Markdown renderers are Rdiscount and Kramdown.
### Rdiscount
    gem install rdiscount --no-rdoc --no-ri
    
### Kramdown
    gem install kramdown --no-rdoc --no-ri

### Recommended Templates
- [HTML5-Boilerplate-Jekyll-Template](https://github.com/bobschi/HTML5-Boilerplate-Jekyll-Template)
- [jekyll_960](https://github.com/btbytes/jekyll_960)
- [jekyll-aid](https://github.com/coolaj86/jekyll-aid/) - Used on [michaelchelen.net](michaelchelen.net)
- [jamesyu_jekyll_template](https://github.com/jamesyu/jamesyu_jekyll_template)
        gem install sass --no-rdoc --no-ri
        gem install rb-inotify --no-rdoc --no-ri
- [jekyll-template](https://github.com/tedkulp/jekyll-template)
- [jekyll-base](https://github.com/raphinou/jekyll-base)

### GSL Gem Bug
The GSL Gem (used for faster LSI) is [not working](https://rubyforge.org/tracker/index.php?func=detail&aid=29255&group_id=285&atid=1167) with GSL 1.15. There is [a patch](https://rubyforge.org/tracker/index.php?func=detail&aid=29353&group_id=285&atid=1169) which has not been tested.

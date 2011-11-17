---
layout: article
uuid: c6c404f0-00cc-4245-b535-450c1eb6fc51
title: Blogging with Git using Jekyll on Ubuntu 11.04
name: blogging-with-git-using-jekyll-on-ubuntu-11-04
created_at: 2011-06-07
updated_at: 2011-06-07
categories: git jekyll ruby ubuntu
published: true
---

Jekyll is a Git compatible static site generator that can be installed on Ubuntu. The template system can be configured for a blog style layout. Tested on Ubuntu Server 11.04 Natty.

<!--more-->

# Install Jekyll Dependencies
    sudo apt-get install git ruby rubygems python-pygments
    sudo gem install rdiscount --no-rdoc --no-ri
The --no-rdoc --no-ri options are suggested for lightweight server installs.

# Install Jekyll
    sudo gem install jekyll --no-rdoc --no-ri

Add the Gems directory `/var/lib/gems/1.8/bin/` to your path.
{% highlight bash %}
export PATH=/var/lib/gems/1.8/bin:$PATH
{% endhighlight %}
Make this change permanent by adding the line to `~/.profile`
https://help.ubuntu.com/community/RubyOnRails#Installing%20RubyGems


# Optional

## Speed up LSI        
    sudo apt-get install libocamlgsl-ocaml-dev libgsl-ruby1.8   
http://vitobotta.com/how-to-migrate-from-wordpress-to-jekyll/


    
## Install Kramdown    
sudo gem1.8 install kramdown  --no-rdoc --no-ri
http://kramdown.rubyforge.org/installation.html

# Recommended Templates
- [HTML5-Boilerplate-Jekyll-Template](https://github.com/bobschi/HTML5-Boilerplate-Jekyll-Template)
- [jekyll_960](https://github.com/btbytes/jekyll_960)
- [jekyll-aid](https://github.com/coolaj86/jekyll-aid/) - Used on [michaelchelen.net](michaelchelen.net).
- [jamesyu_jekyll_template](https://github.com/jamesyu/jamesyu_jekyll_template)
        sudo gem install sass --no-rdoc --no-ri
        sudo gem install rb-inotify --no-rdoc --no-ri
- [jekyll-template](https://github.com/tedkulp/jekyll-template)
- [jekyll-base](https://github.com/raphinou/jekyll-base)

Additional Site Examples: [https://github.com/mojombo/jekyll/wiki/Sites]    

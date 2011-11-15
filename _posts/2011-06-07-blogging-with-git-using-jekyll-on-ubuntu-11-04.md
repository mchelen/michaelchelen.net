---
layout: article
uuid: c6c404f0-00cc-4245-b535-450c1eb6fc51
title: Blogging with Git using Jekyll on Ubuntu Server 11.04
name: blogging-with-git-using-jekyll-on-ubuntu-server-11-04
created_at: 2011-06-07
updated_at: 2011-06-07
categories: git jekyll ruby ubuntu
published: true
---

Jekyll is a Git compatible static site generator that can be installed on Ubuntu Server. The template system can be configured for a blog style layout.

<!--more-->

# Optional EC2 Start
The Amazon EC2 service can be used to host the Ubuntu Server installation.
Tested with EBS Micro instance `ami-06ad526f`.

# Install Apache
{% highlight bash %}
sudo apt-get install apache2
{% endhighlight %}

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

# Site files
Clone from Git repository.
    git clone git://github.com/username/project.git
    
## Optional: SSH Authentication
If the files will be pushed from the server back to the original repository then SSH auth is required. 
{% highlight bash %}
ssh-keygen
cat ~/.ssh/id_rsa.pub
{% endhighlight %}
Copy the public key to your Git repository host such as Github.
{% highlight bash %}
ssh-agent bash
ssh-add ~/.ssh/id_rsa
git clone git@github.com:username/project.git
{% endhighlight %}

# Set up Apache
{% highlight bash %}
sudo cp /etc/apache2/sites-available/default /etc/apache2/sites-available/example.com
sudo vi /etc/apache2/sites-available/example.com
{% endhighlight %}

edit DocumentRoot
    DocumentRoot /home/ubuntu/example.com/_site/
    ServerName www.example.com

enable site
    sudo a2ensite example.com

reload config
    sudo /etc/init.d/apache2 reload


# start jekyll

    cd ~/example.com
    screen jekyll --no-server

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


# AWS finish

Build new AMI
Request spot instance through GUI or CLI.
For example, 1 micro instance at $0.15 max price in the default security group:
    ec2-request-spot-instances ami-1234567 -p 0.15 -n 1 -g "default" -k ec2_key -t t1.micro

# Start Jekyll
{% highlight bash %}
cd ~/www.example.com/
jekyll --no-server --auto
{% endhighlight %}
Or use _config.yml to specify options.

# Fetch Latest Version
    cd ~/www.example.com/
    git pull
    
    
    
# Optional: Speed up LSI        
    
    sudo apt-get install libocamlgsl-ocaml-dev libgsl-ruby1.8   
http://vitobotta.com/how-to-migrate-from-wordpress-to-jekyll/
    
    
    
    
sudo gem1.8 install kramdown  --no-rdoc --no-ri

http://kramdown.rubyforge.org/installation.html
    
    
    
    
    
    
dependencies: git curl    
    
install rvm

# install ruby
rvm install ruby-1.9.3

# select version to use
rvm use ruby-1.9.3

# test
ruby -v

    
    
    
    
    
sources:
https://rvm.beginrescueend.com/rvm/install/

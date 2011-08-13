---
layout: article
uuid: c6c404f0-00cc-4245-b535-450c1eb6fc51
title: Blogging with Git using Jekyll on Ubuntu Server
name: blogging-with-git-using-jekyll-on-ubuntu-server
created_at: 2011-06-07
updated_at: 2011-06-07
categories: unfinished
---

# Optional EC2 Start
The Amazon EC2 service is an example for a host server.
Tested with micro instance EBS `ami-06ad526f`.

# Install Apache
    sudo apt-get install apache2

# Install Jekyll Dependencies
    sudo apt-get install git ruby rubygems python-pygments
    sudo gem install rdiscount --no-rdoc --no-ri
The --no-rdoc --no-ri options are suggested for lightweight server installs.

# Install Jekyll
    sudo gem install jekyll --no-rdoc --no-ri
Add the Gems directory `/var/lib/gems/1.8/bin/` to your path.
    export PATH=/var/lib/gems/1.8/bin:$PATH
Make this change permanent by adding the line to `~/.profile`
https://help.ubuntu.com/community/RubyOnRails#Installing%20RubyGems

# Site files
Clone from Git repository.
    git clone git://github.com/username/project.git
    
## Optional: SSH Authentication
If the files will be pushed from the server back to the original repository then SSH auth is required. 
    ssh-keygen
    cat ~/.ssh/id_rsa.pub
Copy the public key to your Git repository host such as Github.
    ssh-agent bash
    ssh-add ~/.ssh/id_rsa
    git clone git@github.com:username/project.git

# Set up Apache
    sudo cp /etc/apache2/sites-available/default /etc/apache2/sites-available/example.com
    sudo vi /etc/apache2/sites-available/example.com

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
    cd ~/www.example.com/
    jekyll --no-server --auto
Or use _config.yml to specify options.

# Fetch Latest Version
    cd ~/www.example.com/
    git pull

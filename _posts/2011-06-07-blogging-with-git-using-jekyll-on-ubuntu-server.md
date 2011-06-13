---
layout: article
uuid: c6c404f0-00cc-4245-b535-450c1eb6fc51
title: Blogging with Git using Jekyll on Ubuntu Server
name: blogging-with-git-using-jekyll-on-ubuntu-server
created_at: 2011-06-07
updated_at: 2011-06-07
categories: unfinished
---



# Install dependencies

git ruby
sudo gem install rdiscount
sudo apt-get install python-pygments

# Install Jekyll
sudo gem install jekyll


add /var/lib/gems/1.8/bin/ to your path.

# Start Server


DocumentRoot /home/ubuntu/example.com/

# Deploy Over SCP


---
layout: post
uuid: f76e69c2-790c-492d-bc01-86cd1e6a0714
title: Install Jekyll on Ubuntu 12.04
name: install-jekyll-ubuntu-12-04
created_at: 2013-02-15
updated_at: 2013-02-15
categories: jekyll ruby ubuntu
published: false
---

Installing Jekyll is easier than ever on Ubuntu 12.04 using apt-get and everything works out of the box.
<!--more--> 

Install Jekyll
----
Install Rubygems
    sudo apt-get install rubygems

Install Jekyll and the optional Rdiscount gem
    sudo gem install jekyll rdiscount

Start Jekyll
----
Jekyll can be run inside the website directory:
    jekyll

Then visit [http://localhost:4000]() in your web browser to see your Jekyll site.

If the Jekyll webserver is not started by default, you can specify the `--server` option:
    jekyll --server

Additional Options
----

The default port `4000` can be changed, for example when running multiple Jekyll instances:
    jekyll --server 4001

Then visit [http://localhost:4001]()


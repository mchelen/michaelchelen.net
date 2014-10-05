---
layout: post
uuid: f349fbd9-5fd8-49a6-a2d6-cccc0c8f6a1b
title: Install Jekyll on Ubuntu 12.10
name: install-jekyll-ubuntu-12-10
created_at: 2013-04-18
updated_at: 2013-04-18
categories: jekyll ubuntu ruby
published: false
---

Installing Jekyll is easier than ever on Ubuntu 12.10 using apt-get and gem install. Additional options such as Pygments and Rdiscount can be added with the same methods.
<!--more--> 

Install Jekyll
----
Install Ruby 1.9.1 which includes the `gem` command, and the `make` command: 
    sudo apt-get install ruby1.9.1 ruby1.9.1-dev make

Install Jekyll:
    sudo gem install jekyll

Start Jekyll
----
Jekyll can be run inside the website directory:
    jekyll

Then visit [http://localhost:4000]() in your web browser to see your Jekyll site.



Additional Options
----

Install Pygments code syntax highlighter:
    sudo apt-get install python-pygments

Install Rdiscount and Kramdown renderers for Markdown:
    sudo gem install rdiscount kramdown

If the Jekyll webserver is not started by default, you can specify the `--server` option:
    jekyll --server

The default port `4000` can be changed, for example when running multiple Jekyll instances:
    jekyll --server 4001

Then visit [http://localhost:4001]()


References
----
http://stackoverflow.com/a/8113213/2043808

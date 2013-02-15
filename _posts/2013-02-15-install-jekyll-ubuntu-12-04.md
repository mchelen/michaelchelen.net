---
layout: article
uuid: f76e69c2-790c-492d-bc01-86cd1e6a0714
title: Install Jekyll on Ubuntu 12.04
name: install-jekyll-ubuntu-12-04
created_at: 2013-02-15
updated_at: 2013-02-15
categories: unfinished
published: true
---

Installing Jekyll is easier than ever on Ubuntu 12.04 and everything seems to work out of the box.

Install Jekyll
----

Install Rubygems
    sudo apt-get install rubygems

Install Jekyll and the optional Rdiscount gem
    sudo gem install jekyll rdiscount

Start Jekyll
----
Jekyll can be run with
    jekyll

To run a webserver with the Jekyll content you can specify the option
    jekyll --server

Then visit [http://localhost:4000]()


You can choose the port, for example when running multiple Jekyll instances:
    jekyll --server 4001

Then visit [http://localhost:4001]()


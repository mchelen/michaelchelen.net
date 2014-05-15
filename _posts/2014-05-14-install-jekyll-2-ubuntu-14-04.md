---
layout: article
uuid: 7c60f526-81fa-4b5c-8cb1-29e9418a93d8
title: Install Jekyll 2 on Ubuntu 14.04
name: install-jekyll-2-ubuntu-14-04
created_at: 2014-05-13
updated_at:
categories: ubuntu jekyll ruby
published: true
---
Jekyll is a static site generator used by Github Pages. It can be run locally or on a server.

Jekyll can be installed system wide on Ubuntu 14.04 using apt-get and gem install. Additional options such as Pygments and Rdiscount can be added with the same methods. Although there is a package for Jekyll in the Ubuntu repository, these instructions allow installation of the more recent Jekyll version 2.0.3

<!--more--> 

Install Jekyll
----

Install ruby, the ruby development libraries, and the make command.

    sudo apt-get install ruby ruby-dev make

    sudo gem install jekyll --no-rdoc --no-ri




    sudo apt-get install git


https://github.com/jekyll/jekyll/issues/2327

https://github.com/jekyll/jekyll/pull/2362

http://jekyllrb.com/news/2014/05/06/jekyll-turns-2-0-0/

    sudo gem install therubyrhino --no-rdoc --no-ri
    sudo gem install therubyracer --no-rdoc --no-ri

http://ubuntuforums.org/showthread.php?t=1464768&p=9188769#post9188769

sudo apt-get install g++


Start Jekyll

jekyll version: 
    jekyll 2.0.3

    jekyll -v


Generates website into `_site` directory

    jekyll



Generates website and starts local server
    jekyll serve

Then visit [http://localhost:4000]()


Optional Jekyll parameters
Watch Jekyll directory for changes and regenerate website
    jekyll serve -w



Optionally install additional gems

    sudo gem install rdiscount --no-rdoc --no-ri











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

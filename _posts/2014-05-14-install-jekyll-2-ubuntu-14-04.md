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
![](http://jekyllrb.com/img/logo-2x.png)
Jekyll 2 was [recently released][jekyll2] and can be installed on Ubuntu 14.04 using `apt-get` and `gem install`. Additional features such as Rdiscount can be added with the same method. Although there are packages for Jekyll in the [Ubuntu repository][ubunturepo], the packages are older versions of Jekyll.

Jekyll is a static site generator with a templating system that can be adapted for many types of websites, including blogs. It can be run on a server, or run locally and the generated files uploaded to a server. It is the default software used by Github Pages.

*Tested with Jekyll 2.0.3 and Ubuntu Server 14.04*

[jekyll2]:http://jekyllrb.com/news/2014/05/06/jekyll-turns-2-0-0/
[ubunturepo]:http://packages.ubuntu.com/search?keywords=jekyll&searchon=names&suite=all&section=all

<!--more--> 

## Install Prerequisites ##

Install ruby, the ruby development libraries, and the make command.

    sudo apt-get install ruby ruby-dev make


## Install Jekyll ##
Install the Jekyll gem system wide. For speed, we are excluding the extended documentation. To include all documentation, omit the `--no-rdoc --no-ri` switches.

    sudo gem install jekyll --no-rdoc --no-ri


## ExecJS Workaround ##
There is a [current issue][issue] that causes Jekyll to require the CoffeeScript gem even if it will not be used. CoffeeScript in turn requires a JavaScript runtime.

[issue]:https://github.com/jekyll/jekyll/issues/2327

If you run `jekyll -v` and get no error then skip this step. If you get an error "Could not find a JavaScript runtime" you need to install a JavaScript runtime such as `therubyracer`. This requires the `g++` compiler. 

    sudo apt-get install g++
    sudo gem install therubyracer --no-rdoc --no-ri


## Start Jekyll ##

Check that Jekyll has been successfully installed.

    jekyll -v

The current version as of now is `jekyll 2.0.3`

Generate the website and start a local server.

    jekyll serve

Then visit <http://localhost:4000> in a web browser. If it works, that means Jekyll is now successfully runnning!


## Jekyll Commands ##
The Jekyll server can be set to watch the directory for file updates and then regenerate the website.

    jekyll serve -w
    
The default port `4000` can be changed, for example when running multiple Jekyll instances.

    jekyll serve --port 4001
Then visit <http://localhost:4001> in a web browser.

Instead of running as a server, Jekyll can simply generate website files and place them into the `_site` directory.

    jekyll build


## Optional ##
Additional gems can add features to Jekyll, such as the alternate `rdiscount` Markdown renderer.

    sudo gem install rdiscount --no-rdoc --no-ri

Although not required, `git` is often used to manage the files of a Jekyll website.

    sudo apt-get install git


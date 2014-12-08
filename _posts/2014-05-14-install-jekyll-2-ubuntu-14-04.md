---
layout: post
uuid: 7c60f526-81fa-4b5c-8cb1-29e9418a93d8
shortid: 81fa
title: Install Jekyll 2 on Ubuntu 14.04
permalink: /81fa/install-jekyll-2-ubuntu-14-04
description: Jekyll 2 was recently released and can be installed on Ubuntu 14.04 using apt-get and gem install.
created_at: 2014-05-13
updated_at: 2014-12-05
categories: ubuntu jekyll ruby
tags: [Ubuntu, Jekyll, Ruby, Linux]
published: true
redirect_from:
  - /articles/install-jekyll-2-ubuntu-14-04.html
  - /81fa/
---
![](http://jekyllrb.com/img/logo-2x.png)
Jekyll 2 was [recently released][jekyll2] and can be installed on Ubuntu 14.04 or 14.10 using `apt-get` and `gem install`. Additional features such as Rdiscount can be added with the same method. Although there are packages for Jekyll in the [Ubuntu repository][ubunturepo], the packages are for older versions of Jekyll.

Jekyll is a static site generator with a templating system that can be adapted for many types of websites, including blogs. It can be run on a server, or run locally and the generated files uploaded to a server. It is the default software used by Github Pages.

*Tested with Jekyll 2.5.2 on Ubuntu 14.04 and 14.10*

[jekyll2]:http://jekyllrb.com/news/2014/05/06/jekyll-turns-2-0-0/
[ubunturepo]:http://packages.ubuntu.com/search?keywords=jekyll&searchon=names&suite=all&section=all

<!--more--> 

## Install Prerequisites ##

Install ruby, the ruby development libraries, and the make command.

    sudo apt-get install ruby ruby-dev make gcc nodejs

### Javascript Workaround ###
Installation of `nodejs` is required because of an [issue][issue] where Jekyll requires a JavaScript runtime even if it will not be used.

[issue]:https://github.com/jekyll/jekyll/issues/2327

## Install Jekyll ##
Install the Jekyll gem system wide. For speed, we are excluding the extended documentation. To include all documentation, omit the `--no-rdoc --no-ri` switches.

    sudo gem install jekyll --no-rdoc --no-ri

## Start Jekyll ##

Check that Jekyll has been successfully installed.

    jekyll -v

The current version is `jekyll 2.5.2`.

## Recommended ##
Additional gems can add features to Jekyll, such the [`github-pages`][gh-pages] gem which bundles together several gems supported by Github Pages.

    sudo gem install github-pages --no-rdoc --no-ri
   
[gh-pages]: https://github.com/github/pages-gem
    
Although not required, `git` is often used to manage the files of a Jekyll website.

    sudo apt-get install git

### Get Website Content ###
Now that Jekyll is installed, we need content for it to serve. We can either use a current website, or set up a new site from scratch.

#### Use Existing Site ####
Use `git` to clone an existing Jekyll website, such as this one!

    git clone https://github.com/mchelen/michaelchelen.net.git
    cd michaelchelen.net
    
Please note: the `--config` option must be specified to run `michaelchelen.net` locally. See *Extra Options* section below.

#### Create New Site ####
For a new Jekyll site, use the `new` command to create a directory structure and config files.

    jekyll new my-awesome-site
    cd my-awesome-site 

### Start Jekyll ###
Now that the basic config and layout are available, start Jekyll to generate the website HTML and start a local server.

    jekyll serve

Then visit <http://localhost:4000> in a web browser.

> Jekyll is now successfully runnning!


### Extra Options ###
Jekyll can watch the directory for changes and regenerate the website when files are modified.

    jekyll serve -w
    
The default port `4000` can be changed, for example when running multiple Jekyll instances.

    jekyll serve --port 4001
    
Then visit <http://localhost:4001> in a web browser.

The `_config.yml` can also be specified. This is useful if you need different configs for a public site or when running locally. For example, when running `michaelchelen.net` locally use:

    jekyll serve --config _config-local.yml


The website can also be generated without starting a local server. The files are placed into the `_site` directory and can be uploaded to a web server.

    jekyll build

### Updating Jekyll ###
Jekyll can be updated similar to installation, by using the `gem update` command.

    sudo gem update jekyll --no-rdoc --no-ri

The same command can be used to update additional gems.

    sudo gem update github-pages --no-rdoc --no-ri

References
----
* <http://stackoverflow.com/a/8113213/2043808>
* <https://github.com/jekyll/jekyll/pull/2362>
* <http://ubuntuforums.org/showthread.php?t=1464768&p=9188769#post9188769>
* <http://jekyllrb.com/docs/home/>

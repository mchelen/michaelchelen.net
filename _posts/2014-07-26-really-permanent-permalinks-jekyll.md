---
layout: article
uuid: 49a15ea0-0b1e-4030-bdac-8c1c17bbfb5a
title: Really Permanent Permalinks in Jekyll
name: really-permanent-permalinks-jekyll
created_at: 2014-07-26
updated_at: 2014-07-26
categories: jekyll
published: false
redirect_from: /49a15ea0
---
jekyll provides a number of formats for article permalinks, the urls that are used to find the posts on the website

http://jekyllrb.com/docs/permalinks/

using these format options, for a post titled "Foo Bar" published on July 26, 2014 we might have page URLs of:
example.com/foo-bar
example.com/07-26-2014/foo-bar
example.com/blog/07-26-2014/foo-bar
example.com/07-26-2014/foo-bar

this is all well and good, but what if we decide to change the permalink style later on? 

suddenly all the old links to the article are broken

using redirect plugin, we can include the old url in the YAML
however, this has to be done manually, for each old url we wish to still support


a better option is to set a uuid for each article, and redirect from that 1 uuid



~~~~~~~~~~~~~~~~~~~~~~~~~
alternative
javascript


example.com/foo-bar/#uuid


#uuid is added by javascript


~~~~~~~~~~~~~~~~~~~~~~~~~
alternative
use uuid always!






~~~~~~~~~~~~~~~~~~~
add redirect script
http://nitstorm.github.io/blog/github-pages-jekyll-redirect-gem-bash-script/












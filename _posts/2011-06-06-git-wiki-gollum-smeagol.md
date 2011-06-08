--- 
layout: article
title: Git Wiki with Gollum and Smeagol1
---

Git is a revision control system. Gollum is a webserver to work with the repository locally. Smeagol is webserver to publically display the repository pages.


Gem install sudo is optional for system-wide install.


## Prerequisites
### enable universe repository
{% highlight bash %}
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo sed -i -e "s/# deb/deb/g" /etc/apt/sources.list
{% endhighlight %}
### install dependencies
{% highlight bash %}
sudo apt-get update
sudo apt-get -y install ruby rubygems ruby-dev libxml2-dev libxslt-dev
{% endhighlight %}

## Install Gollum and/or Smeagol
{% highlight bash %}
sudo gem install gollum --no-ri --no-rdoc

sudo gem install smeagol --no-ri --no-rdoc
{% endhighlight %}

### Markdown support
{% highlight bash %}
sudo gem install rdiscount --no-ri --no-rdoc
{% endhighlight %}

### Syntax highlighting
{% highlight bash %}
sudo apt-get install python-pygments
{% endhighlight %}

## Update PATH and reload .bashrc
{% highlight bash %}
echo "export PATH=$PATH:/var/lib/gems/1.8/bin" >> ~/.bashrc
source ~/.bashrc
{% endhighlight %}

## Clone Wiki repository
### Public Git URL
{% highlight bash %}
git clone git://github.com/mchelen/michaelchelennet.wiki.git
{% endhighlight %}


## Start Gollum
### Change to the directory with the Git repo and start repo.
{% highlight bash %}
cd michaelchelennet.wiki
gollum
{% endhighlight %}




## GitHub wikis can be branched and merged
 - Not supported by web interface






## Install Smeagol
Smeagol
https://github.com/benbjohnson/smeagol
{% highlight bash %}
sudo gem install smeagol
{% endhighlight %}

Smeagol supports multiple repositories


## Why Markdown?
Markdown is easier to read and write than HTML


### Hello World
- Bar1

{% highlight html %}
<html>
  <body>
    <h3>Hello World</h1>
    <li>
      <ul>Bar1</ul>
    </li>
  </body>
</html>
{% endhighlight %}

test

{% highlight html %}
    ### Hello World
    - Bar1
{% endhighlight %}

## Sources

- http://johanharjono.com/archives/791
- https://github.com/github/gollum
- http://github.github.com/github-flavored-markdown/
- https://github.com/sononum/gollum/wiki/Installation-on-Ubuntu

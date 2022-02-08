---
title: Pimp my blogdown (hugo-lithium)
author: 'Gael S.'
date: '2022-01-28'
slug: pimp-my-blogdown-hugo-lithium
categories: []
tags: []
---

<span class="first-letter">H</span>i! This is my first blog post on my first website created with the R `{blogdown}` package and I am going to explain a few tweaks I made to the default Lithium Hugo theme. Go through the summary below to have the short version or follow along for the full details.



<!-- Summary -->

<hr>

## In a Nutshell

I developed the initial version of my personal website with a these goals regarding content and structure:

- [Home]: empty page (no blog posts) stating the website is still under construction,
- [About]: short bio,
- [Blog]: repo for posts, basic formatting,
- [Links]: A few links to github and external websites based on icons.

It took me a couple of days to have it up and running and my main findings were:

- With the `{blogdown}` [book](https://bookdown.org/yihui/blogdown/), Alison Hill's [post](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) and [github](https://github.com/apreshill) repository, I could make it work!
- Early 2022 is not the best time to start using blogdown as the documentation is catching up with the tools' evolution. I would recommend to start with a simple theme and stay tuned for awesome themes being developed by the `{blogdown}` book authors and the R community (see [Hugo Apéro](https://hugo-apero.netlify.app/)). The Lithium theme looks simple but easy to customize.
- my tweaks:  
    + change the logo and favicon,
    + modify the navigation bar,
    + reorganize the blog posts in a [Blog] page,
    + add CSS class to add boxes to my posts,
    + add Font Awesome icons to the Navbar and markdown files,
    + add an animated background via CSS,



<!-- Before we start -->

<hr>

## Before we start

<!-- Note box -->
<div class="notebox">

<span class="nb-title">A few naming conventions</span> to make the text formatted as code easier to read:  
- `{packagenames}` are surrounded by "`{}`", ex. `{blogdown}`.
- `variable_names` have no punctuation except "`_`" as word separator, ex. the `menu` entry in the configuration file.
- `file.names` are presented with their extension, ex. `config.yaml`.
- `/directory names/` are surrounded by "`/`" and preceded by their path to the website root directory, ex. `/content/post/`.

</div>

I wanted to have my own website for a lonnnng time and I finally had a little free time this January (2022) before going back to work. I am fairly good with [`{rmarkdown}`]() and [`{bookdown}`]() and this was the time to give [`{blogdown}`]() a try!

I am an advanced R user but only know basic html and css and no javascript for now. Really hoped `{blogdown}` could do the heavy lifting and I could focus on the R and Rmarkdown content. But I couldn't stop myself from trying to tweak the default templates and break everything... And I did! So why not use my first post to give a small list of my main findings.



### Big thanks to the R community 

Before diving in the code, I wanted to give a massive shout-out to the R community. I am particularly grateful for all the awesome tools making code and output more fun, easier to grasp and (most importantly) beautiful.

It's hard to compete with Office suites and motivate people to learn coding when:

- they are already familiar with spreadsheets and docs (and all the bad habits that come with them), and 
- basic knowledge of programming language doesn't give much more than very basic and blend illustrations and reports.

Thanks to the Rstudio crew and the larger R community, teaching R and motivating people to learn R with visually pleasing content as become easier, including my own motivation to keep investing my time to learn new ways to use R for making data analysis and products attractive. 



<!-- Key concepts -->

<hr> 

## A few key concepts

### Read these 

In my research for creating a website with `{blogdown}`, I found the best entry points were Yihui's [`{blogdown}` book](https://bookdown.org/yihui/blogdown/) and Alison Hill's blog (this [post](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) in particular). They were both slightly outdated, but 90% of what you need to know is there and Alison's post had the best tutorial for creating your website and deploy it with R, Rstudio, Github and Netlify. 

However, note that the post was based on the Hugo theme [`wowchemy/starter-academic`](https://github.com/wowchemy/starter-hugo-academic) and this theme was not fully compatible with `{blogdown}` as of early 2022. The organization behind the theme recommended its own method for installing the theme. See this issue [638](https://github.com/rstudio/blogdown/issues/638) on `{blogdown}` Github repo and Yihui's comment:

> This issue seems to be fixable to me, but I can't guarantee that it won't happen again in the future. At some point, I might have to just give up and let users follow the official instructions to install extra system dependencies like Go and GIT...  
> --- Yihui's comment on Github rstudio/blogdown issue 638 



### Themes 

In a few messages and repositories on Github, it seemed that the recommended Hugo theme has become [Hugo Apéro](https://github.com/hugo-apero). This theme looked amazing, I loved the name and the style, and its documentation was already very complete. If you are looking for a website that works well, looks nice right off the bat and you are not interesting in a tweaking the theme a lot, this is the theme for you.


<div class="post-img"> 
  <a href="https://hugo-apero.netlify.app/">
    <img src="img/hugo-apero.png" alt="Hugo Apéro">
  </a>
</div>

<br>

If, like me, you prefer to start with a simpler theme to understand better how themes work and how to customize them, the first two themes developed by Yihui might be better suited: [hugo-xmin](https://github.com/yihui/hugo-xmin) and [hugo-lithium](https://github.com/yihui/hugo-lithium). Both themes are maintained by the `{blogdown}` main developer so there should be around for a while. Xmin layout files are well explained in the book's [template section](https://bookdown.org/yihui/blogdown/templates.html). With the logo and tab icon already included, I chose the lithium theme to tweak to my desired website.


<div class="post-img"> 
  <a href="https://github.com/yihui/hugo-lithium">
    <img src="img/hugo-lithium.png" alt="Hugo Lithium">
  </a>
</div>

<br>

### Don't touch the `/themes/` subfolders

While reading the `{blogdown}` you can see that the default content and setup are in the `/themes/hugo-yourthemename` and you might be tempted to start editing directly there. Don't! Instead place your inputs in `/content/`, `/layout/` and `/static/` in the root directory of your website. The details below show the path for the Lithium theme but replace `hugo-lithium` with your theme name and this is applicable to your theme: 

- You should place your content in `/content/` and NOT in `/themes/hugo-lithium/exampleSite/content/`. Actually when you create a new post with `blogdown::new_post()` this is done automatically. But if you want to edit or create a navbar entry manually, copy it to or create it in `/content/`. 

- Lithium default CSS is in `/themes/hugo-lithium/static/css`, but add your own CSS in a file (for example `custom.css`) in this directory: `static/css/custom.css`. Some themes allow you to read your CSS with an entry in `config.yaml`, for other themes (including Lithium) you will need to add the path directly in the layout HTML files. (See CSS tweaks below).

- Place your posts' images in your post sub-folders. Specific to Lithium, place your logo in `/static/images/`. The layout will find your logo automatically there, with just the logo file name in `config.yaml`. Note that for main pages like [About], if you want to add images, you need to create the sub-directory `content/about/`, then rename `about.md` to `index.md` and move it to the sub-directory with your images.



<!-- Lithium tweaks -->

<hr> 

## Pimp my hugo-lithium

### Add pages

This is a two steps process: 

1. Add the navigation bar entries from `config.yaml` under `menu`
1. Add the markdown content to `/content/` as sub-folders with `index.md` files or with the navbar url 

I added Blog and Project entries as well as LinkedIn URL. Note that I used `weight` to set the items' order on the navigation bar.

```
menu:
  main:
    - name: About
      url: /about/
      weight: 1
    - name: Blog
      url: /blog/
      weight: 2
    - name: Projects
      url: /projects/
      weight: 3
    - name: Github
      url: https://github.com/gaelso
      weight: 4
    - name: LinkedIn
      url: https://www.linkedin.com/in/gaelsola/)
      weight: 5
```

At this stage, clicking on either Blog or Projects in the navigation bar will give back a 404 error as I haven't  created content yet. There are 2 options for page content: create a Markdown file with the name of the URL (ex. `projects.md` for the Projects page) or create a sub-folder with the URL name and an `index.md` file inside. For the Project page the two options would be: 

```
/content/projects.md
```
or

```
/content/projects/index.md
```



### Move posts to the Blog page

At this stage we need to understand

### Create a home page

### Change links to fontawesome icons

### Tweak the logo


### Edit `config.yaml`

what to edit for my goals:

- `baseURL` and `title` are obvious, 
- `googleAnalytics` and `disqusShortname` can be commented out. If you want to use these services, you can add code directly in the HTML layout `head_custom.html`. 

<!-- Note box -->
<div class="notebox">

<span class="nb-title">Web-activity trackers</span> 

Please be careful using both tools as they collect a lot of visitors data and `{blogdown}` users have reported switching to alternative solutions that are less intrusive and respect visitors privacy (see [this post](https://www.rostrum.blog/2020/09/16/goatcounter-blogdown/) from Matt Dray and [this post](https://masalmon.eu/2019/10/02/disqus/) from Maëlle Salmon. 


</div>

- Under `menu`, you can add the name and URL of the pages you want to show/create to the navigation bar. For each page, you can also add the fields: `weight` to choose the page display order, and `pre` to show a favicon instead of text. Important notice:  
    + The pages are empty now, pending the creation of the content under the `/content/` folder.
    + The menu entries with no name but a `pre` field are not showing. To do so we need to add the Hugo {{ .Pre }} variable and load Font Awesome icons in the layout HTML files (see below). 
    + Here is my YAML menu: 

```
menu:
  main:
    - name: About
      url: /about/
      weight: 1
    - name: Blog
      url: /blog/
      weight: 2
    - name: Projects
      url: /projects/
      weight: 3
    - name:
      url: https://github.com/gaelso
      pre: "<i class='fab fa-github fa-lg'></i>"
    - name:
      url: https://www.linkedin.com/in/gaelsola/)
      pre: "<i class='fab fa-linkedin fa-lg'  color:#0a66c2; ></i>"
```

```yaml
menu:
  main:
    - name: About
      url: /about/
      weight: 1
    - name: Blog
      url: /blog/
      weight: 2
    - name: Projects
      url: /projects/
      weight: 3
    - name:
      url: https://github.com/gaelso
      pre: "<i class='fab fa-github fa-lg'></i>"
    - name:
      url: https://www.linkedin.com/in/gaelsola/)
      pre: "<i class='fab fa-linkedin fa-lg'  color:#0a66c2; ></i>"
```


- Under `params`, `favicon` can be commented out and managed directly in the layout HTML files.

In `config.yaml`, only update base 





the CSS in  layouts are in the  book



`config.yaml`, `/content/`, `/layout/` and `/static/`


Before continuing, please read the post and go through the book. 99% of what you need is there.  




<pre style="padding:0.5em">
themes/hugo-lithium
+-- <b>exampleSite</b>
|   +-- config.toml
|   +-- content
|   |   +-- about.md
|   |   \-- post
|   |       \-- ...
|   \-- ...
+-- <b>layouts</b>
|   +-- partials
|   |   \-- ...
|   \-- _default
|       \-- ...
+-- <b>static</b>
|   \-- ...
\-- ...
</pre>

and this is the end
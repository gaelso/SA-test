---
title: Blogdown in early 2022 - part1
author: ''
date: '2022-01-24'
slug: blogdown-in-early-2022-part1
categories: []
tags: []
---

Hi! This is my first blog post on my first website created with the R {blogdown} package and I am going to document my journey and give a few tips in this post. This post is divided in XX parts. Go through the summary below to have the short version, skip for part 3 if you mostly want the code or follow along for the full details.

A few conventions to make the text easier to read:  
- Package name are surrounded by "{}", for example {blogdown}.
- Code or elements of code such as variables are formatted as code, for example `menu` entry in the `config.yaml` file.
- File names are formatted as code too, but can be easily identified by their extension, for example `config.yaml`. To avoid confusion between variable names and file names, word separators in variable names is always `"_"`. For example, `my_variable` is a variable while `my_file.ext` is a file.  
- Directories are formatted as code surrounded by `"/"` and preceded by their path to the website root directory, for example with Blogdown, markdown and Rmarkdown content is in the `/content/` folder and posts are in the `/content/post/` sub-folder.

<!-- Part 1 -->

## Part 1: In a Nutshell

I developed the initial version of my personal website with a these goals regarding content and structure:

- [Home]: empty page (no blog posts) stating the website is still under construction,
- [About]: short bio,
- [Blog]: repo for posts, basic formatting,
- [Links]: A few links to github and external websites based on icons.

It took me a couple of days to have it up and running and my main comments and recommendations are:

1. With the {blogdown} [book](https://bookdown.org/yihui/blogdown/), Alison Hill's [post](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) and [github](https://github.com/apreshill) repository, and a bit of Google search, it worked!
1. Early 2022 is not the best time to start using blogdown as the documentation is catching up with the tools' evolution. I would recommend to start with a simple theme and stay tuned for awesome themes being developed by the {blogdown} book authors and the R community (see [Hugo Apéro](https://hugo-apero.netlify.app/)).
1. What I learned from my mistakes: 
    - Don't touch the theme subfolder, 
    - understand the basic themes layout and content subfolders, 
    - learned at least Hugo Leaf and Branch page bundles.
1. (For fun) Add Font Awesome icons to the Navbar and markdown files.
1. (For fun) Add an animated background via CSS.



<!-- Part 3 -->

## Part 2: Intro

This is my first blog post and I am going to talk about my experience building my first website with R {blogdown} package. I wanted to have my own website for a lonnnng time and I finally had a little free time this January (2022) before going back to work. I am fairly good with [{rmarkdown}]() and [{bookdown}]() and now is the time to give [{blogdown}]() a try!

I am an advanced R user but only know basic html and css and no javascript for now. Really hoping {blogdown} can do the heavy lifting and I can focus on the R and Rmarkdown content. I take that last sentence back: I love learning new things and I am sure I'll immediately try to tweak the default template and break everything... And I did! So why not use my first post to give a small list of my main findings.


### Big thanks to the R community 

Before diving in the code, I want to give a massive shout-out to the R community. I am particularly grateful for all the awesome tools for making tech and code more fun, easier to grasp and (most importantly) beautiful.

It's hard to compete with Office suites and motivate people to learn coding when:

- they are already familiar with spreadsheets and docs (and all the bad habits that come with them), and 
- basic knowledge of programming language doesn't give much more than very basic and blend illustrations and reports.

Thanks to the Rstudio crew and the larger R community, teaching R and motivating people to learn R with visually pleasing content as become easier, including my own motivation to keep investing my time to learn new ways to use R for making data analysis and products attractive. 

In my research for creating a website with {blogdown} I found the best entry points were Yihui's [{blogdown} book](https://bookdown.org/yihui/blogdown/) and Alison Hill's blog (this [post](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) in particular). 


### My goals

I am aiming for a dense but well organised website, but my immediate goal is to have a quick and easy mock up running with:
- A simple [Home] page stating the website is still under construction **without any blog post link**,
- An [About] page for a short bio,
- A [Blog] page to regroup all my posts, pending a more advanced version of my website,
- A few links to github and external websites based on icons.


### Overall steps

The whole post could be summarized in these few tips:

- The tools have evolved faster than the documentation, but it is still very relevant, don't be afraid to start now.
- Stick to basic themes to experiment or go with with the latest themes with the latest themes developed by blogdown authors and the R community.
- Don't touch the theme subfolder.
- Understand the basic theme layout and content subfolders.
- Understand Hugo Leaf and Branch page bundles.
- (For fun) Add Font Awesome icons to the Navbar and markdown files.
- (For fun) Add an animated background via CSS.



<!-- Part 3 -->

## Part 3: Hugo themes

After installing the blogdown package, the first thing you will need to input is a Hugo theme. So before typing any code, what are Hugo themes and which ones can we use?


### Brief overview

You are going to generate a static website. It means a bunch of web pages in HTML with content, formatting and style. The {blogdown} package objective is to make Rmarkdown compatible with website themes from [Hugo](https://gohugo.io/). Hugo themes take care of the style and formatting so that you can focus on Rmarkdown content. The first thing you need to do is to choose a [theme](https://themes.gohugo.io/). There is a huge list to choose from but many may not be compatible with blogdown, been updated for a while or their creators are not very responsive.  If you are just starting like me, you would be even better off with a theme developed or recommended by blogdown authors, or widely adopted by the R community.

If you still want to choose from the Hguo theme list, [this link](https://pfht.netlify.app/post/top-starred/) sorts them by decreasing number of stars on github to help you find well maintained themes.  



### Most use [starter-academic](https://github.com/wowchemy/starter-hugo-academic) but...

I screened through a lot of blogdown websites while working on mine, and they all mention using blogdown can be a bumpy road. Most users had compatibility issues with Hugo updates or discontinued Hugo themes. As of early 2022, the {blogdown} [book](https://bookdown.org/yihui/blogdown/) is not updated yet, so each page starts with:

> A note from the authors: Some of the information and instructions in this book are now out of date because of changes to Hugo and the blogdown package. If you have suggestions for improving this book, please file an issue in our GitHub repository. Thanks for your patience while we work to update the book, and please stay tuned for the revised version!  
> In the meantime, you can find an introduction to the changes and new features in the v1.0 release blog post and this "Up & running with blogdown in 2021" blog post.  
> — Yihui, Amber, & Alison

The book and the blog post mentioned in the authors' note are fantastic resources, but at the time of writing most blogdown websites were based on the **wowchemy/starter-academic** Hugo theme, and from the very beginning it didn't work for me due to this [issue 638](https://github.com/rstudio/blogdown/issues/638). Going through the thread I found [this comment](https://github.com/rstudio/blogdown/issues/638#issuecomment-881061149 
) from blogdown main author:

> This issue seems to be fixable to me, but I can't guarantee that it won't happen again in the future. At some point, I might have to just give up and let users follow the official instructions to install extra system dependencies like Go and GIT...  
> --- Yihui's comment on Github rstudio/blogdown issue 638 



### What worked

- [hugo-apero](https://github.com/hugo-apero)
- [hugo-xmin](https://github.com/yihui/hugo-xmin)
- [hugo-lithium](https://github.com/yihui/hugo-lithium)

At the time of writing, the {blogdown} book authors recommend [Hugo Apéro](https://github.com/hugo-apero). It looks amazing, I love the name and the style, and its documentation is already very complete. If you are looking for a website that works well, looks nice right off the bat and you are not interesting in a tweaking the theme a lot, this is the theme for you.

If, like me, you prefer to start with a simpler theme to understand better how themes work and how to customize them, the first two themes developed by Yihui might be better suited: [hugo-xmin](https://github.com/yihui/hugo-xmin) and [hugo-lithium](https://github.com/yihui/hugo-lithium). Both themes are maintained by {blogdown} main developer so there should be around for a while. Xmin layout files are well explained in the book's [template section](https://bookdown.org/yihui/blogdown/templates.html).

Both Xmin and Lithium themes had things I wanted and others I didn't:

- Xmin has a home page with text but both Xmin and Lithium have links to blog posts in the home page.
- Lithium has a Logo on the navigation bar.
- Both have an About section.
- Both lack a tab with links to all blog posts.
- Both have links to github the navigation bar but none have them as icons.

Overall it seemed easier to add content to Lithium home page than add a navbar logo to Xmin so I went with Lithium. I also started another site in another R project with Xmin to explore customization.



<!-- Part 4 -->

## Part 4: New site

### Initiate a site

- Install the {blogdown} package with:  
     ```
     install.packages("blogdown")
     ```  
     for the CRAN version or  
     ```
     devtools::install_github('rstudio/blogdown')
     ```  
     for the development version.
    
- Create a new site. You have 3 options:  
    + R project based on a Github repo (follow Alison [post](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) for detailed instructions, requires a Github account, R and Rstudio, I'd recommended this approach):  
        ```
        blogdown::new_site(theme = "yihui/hugo-lithium")
        ```
    + R project, no Github (requires R and Rstudio): 
        ```
        Rstudio > New Project... > Website using Blogdown
        ```
    + If you don't use Rstudio, set the working directory to your desired location and run:  
        ```
        blogdown::new_site(theme = "yihui/hugo-lithium")
        ```  
    
- Visualize your site with:
    ```
    blogdown::serve_site()
    ```
    
- Stop the server with `blogdown::stop_server()` or restart R.

- If you don't want modify the style you can immediately create new posts with 
    ```
    blogdown::new_post(title = "Your post title")
    ```

### The `config.yaml` file

The {blogwdown} book [section 2.2](https://bookdown.org/yihui/blogdown/configuration.html#configuration) refers to the `config.toml` in the root directory. The book advises to use `.toml` for config and keep `.yaml` files for the posts configuration. However, at the time of writing the root directory config file had a `.yaml` extension for both Xmin and Lithium themes. The book section 2.2 was still relevant for the content, just the syntax of `.yaml` files was slightly different. 

I am comfortable with YAML so the change was even better for me. If you are not, check out the answer to [this post](https://community.rstudio.com/t/is-there-a-great-yaml-in-rmarkdown-guide-out-there/5618) on the Rstudio community for a few useful links.

Alison "Up and running with blogdown in 2021" configuration section was specific to the starter-academic theme, so not very relevant for Lithium or Xmin.

Lithium `config.yaml` file content looks like this:

```md
baseurl: /
languageCode: en-us
title: A Hugo website
theme: hugo-lithium
googleAnalytics: ''
disqusShortname: ''
ignoreFiles:
  - \.Rmd$
  - \.Rmarkdown$
  - _cache$
  - \.knit\.md$
  - \.utf8\.md$
permalinks:
  post: /:year/:month/:day/:slug/
menu:
  main:
    - name: About
      url: /about/
    - name: GitHub
      url: https://github.com/rstudio/blogdown
    - name: Twitter
      url: https://twitter.com/rstudio
params:
  MathJaxCDN: //cdnjs.cloudflare.com/ajax/libs
  MathJaxVersion: 2.7.5
  description: A website built through Hugo and blogdown.
  favicon: favicon.ico
  highlightjsCDN: //cdnjs.cloudflare.com/ajax/libs
  highlightjsLang:
    - r
    - yaml
  highlightjsTheme: github
  highlightjsVersion: 9.12.0
  logo:
    alt: Logo
    height: 50
    url: logo.png
    width: 50
markup:
  defaultMarkdownHandler: goldmark
  goldmark:
    renderer:
      unsafe: yes
```

And Xmin's:

```md
baseurl: "/"
languageCode: "en-us"
title: "A minimal Hugo website"
theme: "hugo-xmin"
googleAnalytics: ""
disqusShortname: ""
ignoreFiles: ["\\.Rmd$", "\\.Rmarkdown$", "_cache$", "\\.knit\\.md$", "\\.utf8\\.md$"]
footnotereturnlinkcontents: "↩"

permalinks:
  note: "/note/:year/:month/:day/:slug/"
  post: "/post/:year/:month/:day/:slug/"

menu:
  main:
    - name: Home
      url: ""
      weight: 1
    - name: About
      url: "about/"
      weight: 2
    - name: Categories
      url: "categories/"
      weight: 3
    - name: Tags
      url: "tags/"
      weight: 4
    - name: Subscribe
      url: "index.xml"

params:
  description: "A website built through Hugo and blogdown."
  footer: "&copy; [Yihui Xie](https://yihui.org) 2017 -- {Year} | [Github](https://github.com/yihui) | [Twitter](https://twitter.com/xieyihui)"

markup:
  highlight:
    codeFences: false
  goldmark:
    renderer:
      unsafe: true
```

The important elements to know/modify are:

- `baseurl`: to update with your website URL before deploying.
- `menu`: where you can edit or create navbar entries. Use `weight` to order them and notice that `url` can point either to local files (those are in the root of the `/content/`
folder) or other websites such as your Github account. 
- `params`: this section is very theme dependent. It's one of the main reasons why I would recommend to install different themes in different projects and copy your content rather than trying to change theme on the same project. In the Lithium theme `params` include the path to your logo and browser tab icon, and your logo dimensions. In Xmin, it includes your footer message, while in Lithium this is managed directly under the theme layout.

To adapt Lithium to my goals, I needed to edit the menu entries to have [Home], [About], [Blog] and links to my Github and LinkedIn accounts. I then edit or add the related content in the `/content/` folder.



### File structure / directory content  

Now is a good time to read blogdown book [chapter 2](https://bookdown.org/yihui/blogdown/hugo.html), especially the sections on [content](https://bookdown.org/yihui/blogdown/content.html#content), [template](https://bookdown.org/yihui/blogdown/templates.html#templates) (or layout as it refers to themes subfolder layout) and [custom layout](https://bookdown.org/yihui/blogdown/custom-layouts.html#custom-layouts) (note to myself to keep these links up-to-date). To best understand how files are structured in the Hugo themes, let's have a look at the `/exampleSite/`, `/layout/` and `/static/` directories under each theme. They are located in `/themes/hugo-themename`. 

**Note**: DO NOT edit the files under in the `/themes/` directory. If the theme is updated or if somehow you broke it too much and need to re-install you will lose of your changes. Instead notice that these folders are also present in your root directory, no matter what theme you chose. This is the content of a standard root directory:

```md
+-- config.yaml
+-- **content**
+-- index.Rmd
+-- **layouts**
+-- netlify.toml
+-- public
+-- R
+-- R-setup.R
+-- README.md
+-- resources
+-- SA-test.Rproj
+-- **static**
\-- themes
```

You can see that `/content/`, `/layout/` and `/statics/` directories are there. {blogdown} intelligently looks for information in these folders first and then complement with the information in the `/themes/` sub-folders. For example to add a post, you should place it under `/content/` and NOT under `/themes/hugo-themename/exampleSite/content/`. Another example, when you just installed a theme, the `/layout/` folder should be empty, meaning all the layout info is under the theme sub-folder `/themes/hugo-themename/layout/`. If you want to modify one of the file, copy it to `/layout/` 

For Lithium, the theme content looks like this:

```md
themes/hugo-lithium
+-- archetypes
|   \-- default.md
+-- **exampleSite**
|   +-- config.toml
|   +-- content
|   |   +-- about.md
|   |   \-- post
|   |       +-- 2015-01-01-lorem-ipsum
|   |       |   \-- index.md
|   |       \-- 2016-12-30-hello-markdown
|   |           \-- index.md
|   \-- static
+-- **layouts**
|   +-- partials
|   |   +-- disqus.html
|   |   +-- footer.html
|   |   +-- footer_highlightjs.html
|   |   +-- footer_mathjax.html
|   |   +-- head.html
|   |   +-- header.html
|   |   +-- head_custom.html
|   |   +-- head_highlightjs.html
|   |   \-- nav.html
|   \-- _default
|       +-- list.html
|       \-- single.html
+-- LICENSE.md
+-- README.md
+-- **static**
|   +-- css
|   |   +-- fonts.css
|   |   \-- main.css
|   +-- favicon.ico
|   +-- fonts
|   |   +-- lato-v11-latin-regular.woff
|   |   +-- lato-v11-latin-regular.woff2
|   |   +-- merriweather-v13-latin-regular.woff
|   |   \-- merriweather-v13-latin-regular.woff2
|   +-- images
|   |   +-- hugo-logo.png
|   |   \-- logo.png
|   \-- js
|       \-- math-code.js
\-- theme.toml
```

And for the Xmin theme, the information is structured like this:

```md
themes/hugo-xmin
+-- archetypes
|   \-- default.md
+-- **exampleSite**
|   +-- config.yaml
|   +-- content
|   |   +-- about.md
|   |   +-- note
|   |   |   +-- 2017-06-13-a-quick-note.md
|   |   |   \-- 2017-06-14-another-note.md
|   |   +-- post
|   |   |   +-- 2015-07-23-lorem-ipsum.md
|   |   |   \-- 2016-02-14-hello-markdown.md
|   |   +-- _index.markdown
|   |   \-- _index.Rmarkdown
|   \-- layouts
|       \-- partials
|           \-- foot_custom.html
+-- **layouts**
|   +-- 404.html
|   +-- partials
|   |   +-- footer.html
|   |   +-- foot_custom.html
|   |   +-- header.html
|   |   \-- head_custom.html
|   \-- _default
|       +-- list.html
|       +-- single.html
|       \-- terms.html
+-- LICENSE.md
+-- README.md
+-- **static**
|   \-- css
|       +-- fonts.css
|       \-- style.css
\-- theme.toml
```

As mentioned in the previous section, the 

- Don't touch the theme subfolder.
- Understand the basic theme layout and content subfolders.


### index.md vs _index.md
- Understand Hugo Leaf and Branch page bundles.



<!-- Part 5 -->

## Part 5: Simple but effective theme customisation

### Add a home.html


### Add a blog page
- add page and content

### Customise logo and footer

  he first  with either

`install.packages("blogdown")`

for the CRAN version or 

`devtools::install_github('rstudio/blogdown')`

for the development version, we create a new website with 

`Rstudio > New Project... > Website using Blogdown` 

or 

`blogdown::new_site()`

The first thing you will have to input is the Hugo theme. 


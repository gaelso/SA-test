---
title: Blogdown in early 2022 - part1
author: ''
date: '2022-01-24'
slug: blogdown-in-early-2022-part1
categories: []
tags: []
---

Hi! This is my first blog post on my first website created with the R `blogdown` package and I am going to document my journey and few tips in this post.


## In short!

I developed the initial version of my personal website with a few goals regarding content and structure:

- [Home]: empty page (no blog posts) stating the website is still under construction,
- [About]: short bio,
- [Blog]: repo for posts, basic formatting,
- [Links]: A few links to github and external websites based on icons.

It took me a couple of days to have it up and running and my main comments and recommendations are:

1. With the blogdown [book], Alison Hill's [post] and [github] and a bit of Google search, it worked!
1. Early 2022 is not the best time to start using blogdown as the documentation is catching up with the tools' evolution. I would recommend to start with a simple theme and stay tuned for awesome themes developed by the R community (see [Apéro](https://hugo-apero.netlify.app/)).
1. Learn from my mistakes: Don't touch the theme subfolder, understand the basic theme layout and content subfolders and at least Hugo Leaf and Branch page bundles.
1. (For fun) Add Font Awesome icons to the Navbar and markdown files.
1. (For fun) Add an animated background via CSS.



## Hello!

This is my first blog post and I am going to talk about my experience building my first website with R `blogdown` package.

I wanted to have my own website for a lonnnng time. I had a little free time this January (2022) before going back to work. I am fairly good with [`rmarkdown`]() and [`bookdown`]() and now is the time to give [`blogdown`]() a try!

I am an advanced R user but only know basic html and css for now. Really hoping `blogdown` can do the heavy lifting and I can focus on the R and Rmarkdown content. Actually I love learning new things and I am sure I'll immediately try to tweak the default template and break everything... And I did! So why not use my first post to give a small list of my main findings.


### Big thanks to the R community 

Before diving in the code, I want to give a massive shout-out to the R community. I am particularly grateful for all the awesome tools for making tech and code more fun, easier to grasp and (most importantly) beautiful.

It's hard to compete with Office suites and motivate people to learn coding when:

- they are already familiar with spreadsheets and docs (and all the bad habits that come with them), and 
- basic knowledge of programming language doesn't give much more than very basic and blend illustrations and reports.

Thanks to the Rstudio crew and but also the larger R community, teaching R and motivating people to learn R with visually pleasing content as become easier, including my own motivation to keep investing my time to learn new ways to use R for making data analysis and products attractive. 


### Resources

In my research for creating a website with `blogdown` I found the best entry points were Yihui's [blogdown's bookdown](https://bookdown.org/yihui/blogdown/) and Alison Hill's blog (this [post](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) in particular). 

At the time of writing most blogdown based websites were based on the wowchemy/start-academic theme, but from the very beginning it didn't work for me (more on that later).   


### My goals

I am aiming for a dense but well organised website, but my immediate goal is to have a quick and easy mock up running with:
- A simple [Home] page stating the website is still under construction **without any blog post link**,
- An [About] page for a short bio,
- A [Blog] page to regroup all my posts, pending a more advanced version of my website,
- A few links to github and external websites based on icons.


### Overall steps

The whole post could be summarized in these few tips:

- The tools have evolved faster than the documentation.
- Stick to basic themes and experiment with the latest supported by the R community.
- Don't touch the theme subfolder.
- Understand the basic theme layout and content subfolders.
- Understand Hugo Leaf and Branch page bundles.
- (For fun) Add Font Awesome icons to the Navbar and markdown files.
- (For fun) Add an animated background via CSS.



## Let's start!


Early 2022 may not be the best tiome to start using blogdown. The [reference book]()




> A note from the authors: Some of the information and instructions in this book are now out of date because of changes to Hugo and the blogdown package. If you have suggestions for improving this book, please file an issue in our GitHub repository. Thanks for your patience while we work to update the book, and please stay tuned for the revised version!
> 
> In the meantime, you can find an introduction to the changes and new features in the v1.0 release blog post and this "Up & running with blogdown in 2021" blog post.
> 
> — Yihui, Amber, & Alison


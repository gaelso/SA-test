---
title: Thank you R community
author: 'Gael Sola'
date: '2022-01-24'
slug: thank-you-r-community
categories:
  - First post
  - Opinion
  - R
  - Rstudio
tags:
  - blogdown
  - R
  - Rstudio
---

<span class="first-letter">H</span>i! This is my first blog post on my first website created with the R `{blogdown}` package. I wanted to have my own website for a long time and I finally had a little free time this January (2022) before going back to work. I am fairly good with [`{rmarkdown}`](https://rmarkdown.rstudio.com/) and [`{bookdown}`](https://bookdown.org/yihui/bookdown/) R packages, now is the time to give [`{blogdown}`](https://bookdown.org/yihui/blogdown/) a try!


<hr> 

## {blogdown} with love

I am an advanced R user but only know basic html and css and no javascript at the time of writing this post. I tested `{blogdown}` to create a website with my very basic skills, hoping that I could focus on content and let the package functions do the heavy lifting. And I have to say it is amazing! 

January 2022 is not the best time to start using `{blogdown}` as the [documentation](https://bookdown.org/yihui/blogdown/) is slightly outdated. As the authors note:

> Some of the information and instructions in this book are now out of date because of changes to Hugo and the blogdown package. If you have suggestions for improving this book, please file an issue in our GitHub repository. Thanks for your patience while we work to update the book, and please stay tuned for the revised version!  
> In the meantime, you can find an introduction to the changes and new features in the [v1.0 release blog post](https://www.rstudio.com/blog/blogdown-v1.0/) and this ["Up & running with blogdown in 2021"](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/) blog post.  
> --- Yihui, Amber, & Alison (consulted on 24/01/2022)

And in particular the recommended Hugo theme [`wowchemy/starter-academic`](https://github.com/wowchemy/starter-hugo-academic) is not fully compatible with `{blogdown}` as of early 2022. The organization behind the theme recommend its own method for installing the theme. See this issue [638](https://github.com/rstudio/blogdown/issues/638) on `{blogdown}` Github repo and Yihui's comment:

> This issue seems to be fixable to me, but I can't guarantee that it won't happen again in the future. At some point, I might have to just give up and let users follow the official instructions to install extra system dependencies like Go and GIT...  
> --- Yihui's comment on Github rstudio/blogdown issue 638 

Still, most of Alison's post and the blogdown book were very relevant and a good basis for learning `{blogdown}` and make it work. After a little search online it seems that the new hype is the [Hugo Apéro theme](https://github.com/hugo-apero). This theme looks gorgeous and its documentation is already well advanced. I played a bit with this theme and the default [Hugo Lithium theme](https://github.com/yihui/hugo-lithium). From my point of view, they complement each other nicely to offer either:

- a good looking website out of the box to let users focus on content with themes like [Hugo Apéro](https://github.com/hugo-apero), or
  
  <div class="post-img"> 
    <a href="https://hugo-apero.netlify.app/">
      <img src="/images/post-images/hugo-apero.png" alt="Hugo Apéro screenshot">
    </a>
  </div>
  
- an excellent entry point to learn web development and design with simple and easy to tweak themes like [Hugo Xmin](https://github.com/yihui/hugo-xmin) and [Hugo Lithium](https://github.com/yihui/hugo-lithium). 

  <div class="post-img"> 
    <a href="https://github.com/yihui/hugo-lithium">
      <img src="/images/post-images/hugo-lithium.png" alt="Hugo Lithium screenshot">
    </a>
  </div>

<br>

I chose the second option as I like to understand what is under the hood. Hugo Apéro template was too advanced for my current level, while Hugo Lithium is easy to tweak and build on. I am also interested both in content and style, and I'd rather sacrifice a bit of style to be able to learn and play with template and CSS. Actually, I am having so much fun with it that my next goal is to start developing my own template from scratch.


<hr>

## Thank you

I am taking advantage of this first post to give a massive shout-out to the R community. I am particularly grateful for all the awesome tools, all open source, making code and products more fun, easier to grasp and (most importantly) beautiful. 

Thanks to packages developed by Rstudio like `{ggplot}`, `{rmarkdown}`, `{bookdown}` and `{blogdown}` but also so many other less known packages from the R community like `{extrafont}`, `{ggtext}`, R users can produce more than quick and dirty data analysis with stark output figures. Code can be integrated with presenting the result into documents that have nice formatting and good looking illustrations.   

It's hard to compete with office suites and motivate people to learn coding when:

- they are already familiar with spreadsheets and docs (and all the bad habits that come with them), and 
- basic knowledge of programming language doesn't give much more than very basic and blend illustrations and reports.

Thanks to the Rstudio crew and the larger R community, teaching R and motivating people to learn R with visually pleasing content as become easier, including my own motivation to keep investing time to learn new ways to use R for making data analysis and products attractive. 


<hr>


This was my very first post and I just wanted to share my excitement another awesome package! Stay tuned for other posts with more technical content.  

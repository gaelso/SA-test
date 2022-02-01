

## This scripts hosts the main command line to setup the site


## Project created with version control, see https://happygitwithr.com/

#devtools::install_github("rstudio/blogdown")
#blogdown::install_hugo("0.92.0")

library(blogdown)

## Check Hugo version
blogdown::hugo_version()


## Create site
#blogdown::new_site(theme = "yihui/hugo-lithium")

## Re-initialize theme
#blogdown::install_theme(theme = "yihui/hugo-lithium", force = T, update_config = T)

blogdown::serve_site()

blogdown::stop_server()


blogdown::check_site()
blogdown::check_config()
blogdown::check_gitignore()


## Build site to publish on OVH
blogdown::build_site(local = T)



## Add psots 
blogdown::new_post(title = "Navbar icons")
blogdown::new_post(title = "Blogdown in early 2022 - part1")

blogdown::new_post(title = "Pimp my blogdown (hugo-lithium)")




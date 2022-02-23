

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

## Copy favicon.ico to root
file.copy("static/images/icon/favicon.ico", "static/favicon.ico")

## Build site to publish on OVH
dir.create("www", showWarnings = F)

blogdown::build_site(local = F)

site_files <- list.files(path = "public", recursive = T, full.names = T)
site_files

to_rm <- list.files("www", recursive = T, full.names = T)
to_rm
unlink(to_rm)

file.copy(site_files, "www", recursive = T)

## Add psots 
blogdown::new_post(title = "Navbar icons")
blogdown::new_post(title = "Blogdown in early 2022 - part1")

blogdown::new_post(title = "Pimp my blogdown (hugo-lithium)")




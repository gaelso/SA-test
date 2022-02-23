

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
file.copy("static/images/icon/favicon.ico", "static/favicon.ico", overwrite = T)


## Build site to publish on OVH
to_rm <- list.files("public", full.names = T, recursive = T)
to_rm

unlink(to_rm, recursive = T)

blogdown::build_site(local = F)


## Add posts 
blogdown::new_post(title = "Post template", subdir = "blog/post/")




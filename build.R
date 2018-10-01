if(!require(blogdown)) {
	devtools::install_github('rstudio/blogdown')
	library(blogdown)
}

# Setup (run only once per class)
# blogdown::install_hugo()
# blogdown::new_site(theme = 'Xzya/hugo-bootstrap')
# blogdown::install_theme(theme = 'Xzya/hugo-bootstrap')

blogdown::build_site()

# Serve site
blogdown::serve_site()
blogdown::stop_server()

##### RStudio Server

if(!require(analogsea)) {
	devtools::install_github("sckott/analogsea")
	library(analogsea)
}

droplets() # List droplets

rstudio.user <- 'rstudio'
rstudio.pass <- getPass::getPass()

# Create RStudio Docklet
rstudio.docklet <- docklet_create(name = 'CRJ504-RStudio', region = 'nyc1')
rstudio.docklet %>%
	docklet_rstudio(user = rstudio.user, password = rstudio.pass,
					port = '80', keyfile = '~/.ssh/crj504')

rstudio.docklet <- droplets()[['CRJ504-RStudio']]
rstudio.docklet$networks$v4[[1]]$ip_address # IP address

# Add users
rstudio.docklet %>% docklet_rstudio_addusers(user = 'stacia', pass = 'crj504',
											 port = '80', keyfile = '~/.ssh/crj504')

# Destroy Docklet
droplet_delete(rstudio.docklet$id)



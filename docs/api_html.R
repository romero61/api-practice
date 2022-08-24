library(httr)
library(purrr)

# Querying the the GitHub REST api
r <- GET("https://api.github.com/users/romero61/repos")
r$url
r$status_code # Will return 404 if incorrect address

# Extract the content from the response
my_repos_list <- content(r) 
my_repos_list[[1]]
my_repos_list[[1]]$full_name
my_repos_list[[2]]$full_name


# Extract what we want from the list
my_repos <- map_chr(my_repos_list, "full_name")

my_repos[1:2]
## [1] "brunj7/adv-r"
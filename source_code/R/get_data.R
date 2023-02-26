library(readr)
library(dtplyr) 
library(dplyr)

ROOT <- rprojroot::find_rstudio_root_file()
DATA_PATH <- paste0(ROOT, "/data/")

get_movielens_small_ratings <- function(){
  read_csv(paste0(DATA_PATH, "movielens/small/ratings.csv"))
}

get_movielens_small_movies <- function(){
  read_csv(paste0(DATA_PATH, "movielens/small/movies.csv"))
}

get_movielens_small_tags <- function(){
  read_csv(paste0(DATA_PATH, "movielens/small/tags.csv"))
}

get_movielens_small <- function(){
  df_ratings <- get_movielens_small_ratings() %>% 
    lazy_dt()
    select(userId, movieId, rating)
  
  df_movies <- get_movielens_small_movies()

  df_ratings %>%
    left_join(df_movies, by = "movieId") %>% 
    select(userId, movieId, title, rating)
}

get_movielens_medium_ratings <- function(){
  read_csv(paste0(DATA_PATH, "movielens/medium/ratings.csv"))
}

get_movielens_medium_movies <- function(){
  read_csv(paste0(DATA_PATH, "movielens/medium/movies.csv"))
}

get_movielens_medium_tags <- function(){
  read_csv(paste0(DATA_PATH, "movielens/medium/tags.csv"))
}

get_movielens_medium <- function(){
  df_ratings <- get_movielens_medium_ratings() %>% 
    select(userId, movieId, rating)
  
  df_movies <- get_movielens_medium_movies()
  
  df_ratings %>%
    left_join(df_movies, by = "movieId") %>% 
    select(userId, movieId, title, rating)
}

get_movielens_large_ratings <- function(){
  read_csv(paste0(DATA_PATH, "movielens/large/ratings.csv"))
}

get_movielens_large_movies <- function(){
  read_csv(paste0(DATA_PATH, "movielens/large/movies.csv"))
}

get_movielens_large_tags <- function(){
  read_csv(paste0(DATA_PATH, "movielens/large/tags.csv"))
}

get_movielens_large <- function(){
  df_ratings <- get_movielens_large_ratings() %>% 
    select(userId, movieId, rating)
  
  df_movies <- get_movielens_large_movies()
  
  df_ratings %>%
    left_join(df_movies, by = "movieId") %>% 
    select(userId, movieId, title, rating)
}
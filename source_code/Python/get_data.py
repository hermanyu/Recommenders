import numpy as np
import pandas as pd

MOVIELENS_PATH = "../data/movielens/"

# MovieLens -------------------

## Small -----------------------
def get_movielens_small_ratings():
    return pd.read_csv(MOVIELENS_PATH + "small/ratings.csv")

def get_movielens_small_movies():
    return pd.read_csv(MOVIELENS_PATH + "small/movies.csv")

def get_movielens_small():
    df_ratings = get_movielens_small_ratings()[["userId", "movieId", "rating"]]
    df_movies = get_movielens_small_movies()[["movieId", "title"]]
    
    df_ratings = df_ratings.merge(
        df_movies,
        on = "movieId"
    )
    
    return df_ratings

## Medium ------------------------
def get_movielens_medium_ratings():
    return pd.read_csv(MOVIELENS_PATH + "medium/ratings.csv")

def get_movielens_small_movies():
    return pd.read_csv(MOVIELENS_PATH + "medium/movies.csv")

def get_movielens_medium():
    df_ratings = get_movielens_medium_ratings()[["userId", "movieId", "rating"]]
    df_movies = get_movielens_medium_movies()[["movieId", "title"]]
    
    df_ratings = df_ratings.merge(
        df_movies,
        on = "movieId"
    )
    
    return df_ratings

## Large -------------------------
def get_movielens_large_ratings():
    return pd.read_csv(MOVIELENS_PATH + "large/ratings.csv")

def get_movielens_large_movies():
    return pd.read_csv(MOVIELENS_PATH + "large/movies.csv")

def get_movielens_large():
    df_ratings = get_movielens_large_ratings()[["userId", "movieId", "rating"]]
    df_movies = get_movielens_large_movies()[["movieId", "title"]]
    
    df_ratings = df_ratings.merge(
        df_movies,
        on = "movieId"
    )
    
    return df_ratings
    
   
Rails.application.routes.draw do
  resources :movies, only: [:index, :create]
end
```

Then, add a controller method:

```rb
class MoviesController < ApplicationController

  def create
    movie = Movie.create(movie_params)
    render json: movie, status: :created
  end
  
  private
  
  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end
  ```

  def index
    movies = Movie.all
    render json: movies
  end

end

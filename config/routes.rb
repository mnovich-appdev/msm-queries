Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", {:controller => "application", :action => "director_index"})
  get("/directors/:director_id", {:controller => "application", :action => "director_details"})
  get("/movies", {:controller => "application", :action => "movie_index"})
  get("/movies/:movie_id", {:controller => "application", :action => "movie_details"})
  get("/actors", {:controller => "application", :action => "actor_index"})
  get("/actors/:actor_id", {:controller => "application", :action => "actor_details"})
end

Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", {:controller => "application", :action => "director_index"})
  get("/directors/:director_id", {:controller => "application", :action => "director_details"})
end

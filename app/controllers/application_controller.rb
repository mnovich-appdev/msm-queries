class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def director_index
    @director_list = Director.all

    render({:template => "misc_templates/director_index"})
  end

  def director_details
    director_array = Director.where({:id => params.fetch("director_id").to_i}).last
    @director_name = director_array.name
    @director_dob = director_array.dob
    @director_bio = director_array.bio
    @director_image = director_array.image

    render({:template => "misc_templates/director_details"})
  end

   def movie_index
    @movie_list = Movie.all

    render({:template => "misc_templates/movie_index"})
  end

  def movie_details
    movie_array = Movie.where({:id => params.fetch("movie_id").to_i}).last

    render({:template => "misc_templates/movie_details"})
  end

end

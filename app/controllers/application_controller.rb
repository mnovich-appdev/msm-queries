class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def director_youngest
    youngest_director = Director.where.not({:dob => nil}).order({:dob => :asc}).last
    @youngest_name = youngest_director.name
    @youngest_id = youngest_director.id
    @youngest_dob = youngest_director.dob.strftime("%B")+" "+youngest_director.dob.strftime("%e")+", "+youngest_director.dob.strftime("%Y")
    render({:template => "misc_templates/director_youngest"})
  end

  def director_oldest
    oldest_director = Director.where.not({:dob => nil}).order({:dob => :asc}).first
    @oldest_name = oldest_director.name
    @oldest_id = oldest_director.id
    @oldest_dob = oldest_director.dob.strftime("%B")+" "+oldest_director.dob.strftime("%e")+", "+oldest_director.dob.strftime("%Y")
    render({:template => "misc_templates/director_oldest"})
  end

  def director_index
    @director_list = Director.all

    render({:template => "misc_templates/director_index"})
  end

  def director_details
    director_array = Director.where({:id => params.fetch("director_id")}).last
    @director_name = director_array.name
    @director_dob = director_array.dob
    @director_bio = director_array.bio
    @director_image = director_array.image

    @movie_list = Movie.where({:director_id => params.fetch("director_id")})

    render({:template => "misc_templates/director_details"})
  end

   def movie_index
    @movie_list = Movie.all

    render({:template => "misc_templates/movie_index"})
  end

  def movie_details
    movie_array = Movie.where({:id => params.fetch("movie_id")}).last
    @movie_title = movie_array.title
    @movie_year = movie_array.year
    @movie_duration = movie_array.duration
    @movie_desc = movie_array.description
    @movie_image = movie_array.image

    @movie_director = Director.where({:id => movie_array.director_id}).last.name

    render({:template => "misc_templates/movie_details"})
  end

     def actor_index
    @actor_list = Actor.all

    render({:template => "misc_templates/actor_index"})
  end

  def actor_details
    actor_array = Actor.where({:id => params.fetch("actor_id")}).last
    @actor_name = actor_array.name
    @actor_dob = actor_array.dob
    @actor_bio = actor_array.bio
    @actor_image = actor_array.image

    @character_array = Character.where({:actor_id => params.fetch("actor_id")})   

    render({:template => "misc_templates/actor_details"})
  end

end

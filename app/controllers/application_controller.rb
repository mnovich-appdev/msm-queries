class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def director_index
    @director_list = Director.all

    render({:template => "misc_templates/director_index"})
  end

  def director_details
    render({:template => "misc_templates/director_details"})
  end
end

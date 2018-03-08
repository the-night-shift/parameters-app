class PagesController < ApplicationController
  def parameters_method
    the_name = params["name"].upcase
    location = params["location"]
    render json: {name: the_name, location: "You are in #{location}"}
  end
end

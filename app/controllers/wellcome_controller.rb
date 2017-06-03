class WellcomeController < ApplicationController
  def index
    @profiles = Profile.all
    puts  @profiles.inspect
    puts  @profiles.class
    puts  @profiles[0].bullyp
    puts @profiles.find_by(id: params[:key])
    puts params[:key]
    @variable = params[:key]
  end
end

class WellcomeController < ApplicationController
  def index
    var1 = Profile.first
    var2 = Profile.last
    puts "var1   = #{var1.inspect}"
    puts "var2   = #{var2.inspect}"
    @profiles = Profile.all
    puts  @profiles.inspect
    puts  @profiles.class
    puts  @profiles[0].bullyp
    puts @profiles.find_by(id: params[:key])
    puts params[:key]
    @variable = params[:key]
  end
end

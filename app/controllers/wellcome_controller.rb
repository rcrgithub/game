class WellcomeController < ApplicationController
  def index
    var1 = Profile.first
    var2 = Profile.last
    puts "key   = #{params[:key]}"
    puts "key1   = #{params[:key1]}"
    @profiles = Profile.all
    # puts  @profiles.inspect
    # puts  @profiles.class
    # puts  @profiles[0].bullyp
    # puts @profiles.find_by(id: params[:key])
    # puts params[:key]
    @variable = params[:key]
    @variable1 = params[:key1]
if @variable == @variable1 then
  @aux1=2
else
@aux1=1
end
    puts "variable1  =    #{@variable1}"
    puts "variable  =    #{@variable}"



    # num=0
    # case @variable1
    # when 0..13 then @aux1 = 1
    # when 100..113 then @aux1 =2
    #       else
    #         puts   "  entre"
    #         @profiles1=[]
    #           @aux1 = 0
    #           for i in 0..@profiles.length-1
    #             cicle = true
    #             while cicle do
    #               num = rand(@profiles.length-1)
    #               puts "etiqueta+++++#{@profiles1[num].inspect}"
    #               puts "etiquetaclass#{@profiles1[num].class}"
    #               if @profiles1[num] == nil then
    #                 @profiles1[num] = @profiles[i]
    #                 cicle = false
    #               end
    #             end
    #           end
    #           puts "veremos==============#{@profiles1}"
    #           puts @profiles1.inspect
    #           puts @profiles1.class
    #           puts  @profiles.inspect
    #           puts  @profiles.class
    # end
  end
end

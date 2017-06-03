class ProfilesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = Profile.find(params[:id])
     end

  # GET /profiles/new
  def new
    @user = current_user
    @profile = Profile.new
    @profile.user_id = @user.id
    end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find(params[:id])
     end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    puts 'antes de save'
    puts @profile.inspect
    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  # DELETE /shipping_companies/1
  # DELETE /shipping_companies/1.json

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    redirect_to profiles_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def profile_params
    params.require(:profile).permit(:id, :name, :last_name, :bullyp, :user_id, :avatar)
  end
end

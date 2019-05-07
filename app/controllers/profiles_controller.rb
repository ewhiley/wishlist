class ProfilesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @profile = @user.profile
  end

  def create
    @user = current_user
    @profile = Profile.new(profile_params2)
    @profile.user_id = @user.id
    @profile.save
    # byebug
    redirect_to my_profile_path
  end

  def edit
    @profile = Profile.find(params[:id])
    @user = current_user
  end

  def show
    @profile = Profile.find(params[:id])
    @user = current_user
  end

  def update
    @profile = Profile.find(params[:id])
    @user = current_user

    if @profile.update(profile_params)
      flash[:success] = "Profile succesfully updated"
      redirect_to @user.profile
    else
      render 'edit'
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :phone_no, :street_number, :street_address, :suburb, :state, :postcode)
  end

  def profile_params2
    params.permit(:name, :phone_no, :street_number, :street_address, :suburb, :state, :postcode)
  end
end

class ProfilesController < ApplicationController
  def index
    @user = current_user
  end

  def create
    @user = current_user
    @profile = Profile.new(profile_params)
    @profile.user_id = @user.id
    @profile.save
    # byebug
    redirect_to my_profile_path
  end

  private
  def profile_params
    params.permit(:name, :phone_no, :street_number, :street_address, :suburb, :state, :postcode)
  end
end

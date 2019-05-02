class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @user_products = @user.products.all
  end

  def products
    @user_products = @user.products
  end

  def wishlists
    @user_wishlists = @user.wishlists
  end

  def profile
    @user_profile = @user.profile
  end
end

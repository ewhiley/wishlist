class UsersController < ApplicationController
  before_action :authenticate_user!
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

  def wishlist_history
    @user = current_user
    @purchases = Purchase.all.order('created_at DESC')
  end

  def seller_history
    @user = current_user
  end
end

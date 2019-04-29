class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
    @user = current_user
  end

  def new
    @wishlist = Wishlist.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def create
    @categories = Category.all.map{|c| [ c.name, c.id ] }
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.user = current_user

    category = Category.find(params[:category_id1])
    category2 = Category.find(params[:category_id2])
    @wishlist.categories << category
    @wishlist.categories << category2
    @wishlist.save

    redirect_to wishlist_path(@wishlist)
  end

  def show
    @wishlist = Wishlist.find(params[:id])
  end

  private
  def product_params
    params.require(:wishlist).permit(:name, :description, :price, images: [], category_ids: [])
  end
end


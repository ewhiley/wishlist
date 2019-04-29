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
    category3 = Category.find(params[:category_id3])
    category4 = Category.find(params[:category_id4])
    category5 = Category.find(params[:category_id5])
    @wishlist.categories << category
    @wishlist.categories << category2
    @wishlist.categories << category3
    @wishlist.categories << category4
    @wishlist.categories << category5
    @wishlist.save

    redirect_to wishlist_path(@wishlist)
  end

  def show
    @wishlist = Wishlist.find(params[:id])
    @matches = []
    @wishlist_categories = @wishlist.categories
    @w_cat_ids = @wishlist_categories.ids
    @products = Product.all
    @products.each do |product|
      if (product.categories.ids & @w_cat_ids).any? && product.user_id != @wishlist.user.id
        @matches << product
      end
    end
  end

  private
  def wishlist_params
    params.require(:wishlist).permit(:name, :description, :price, images: [], category_ids: [])
  end
end


class WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
    @user = current_user
    @products_without_wishlists = Purchase.all.find_by(buyer_id: @user.id)
  end

  def new
    @wishlist = Wishlist.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.user = current_user

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

  def edit
    @wishlist = Wishlist.find(params[:id])
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def update
    @wishlist = Wishlist.find(params[:id])
   
    if @wishlist.update(wishlist_params)
      flash[:notice] = "Wishlist successfully updated"
      redirect_to @wishlist
    else
      render 'edit'
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    flash[:alert] = "Wishlist was successfully deleted"
    
    redirect_to wishlists_path
  end


  private
  def wishlist_params
    params.require(:wishlist).permit(:name, :description, :price, images: [], category_ids: [])
  end
end


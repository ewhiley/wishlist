class WishlistsController < ApplicationController
  before_action :authenticate_user!
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
    flash[:success] = "Wishlist successfully created"

    # redirect_to wishlist_path(@wishlist)
    redirect_to my_wishlists_path
  end

  def show
    @wishlist = Wishlist.find(params[:id])
    check_user(@wishlist)
    @matches = []
    @wishlist_categories = @wishlist.categories
    @w_cat_ids = @wishlist_categories.ids
    @products = Product.all.order('created_at DESC')
    @products.each do |product|
      if (product.categories.ids & @w_cat_ids).any? && product.user_id != @wishlist.user.id
        @matches << product
      end
    end
  end

  def edit
    @wishlist = Wishlist.find(params[:id])
    check_user(@wishlist)
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def update
    @wishlist = Wishlist.find(params[:id])
   
    if @wishlist.update(wishlist_params)
      flash[:success] = "Wishlist successfully updated"
      redirect_to @wishlist
    else
      render 'edit'
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    flash[:success] = "Wishlist was successfully deleted"
    
    redirect_to wishlists_path
  end


  private
  def wishlist_params
    params.require(:wishlist).permit(:name, :description, :price, images: [], category_ids: [])
  end

  def check_user(wishlist)
    if current_user.id != wishlist.user_id
      flash[:notice] = "You are not authorized to view that content"
      redirect_to root_path
      return
    end
  end
end


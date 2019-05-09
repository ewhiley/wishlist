class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all.order('created_at DESC')
    @user = current_user
  end

  def new
    @product = Product.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.save
    flash[:success] = "Product successfully listed. Good luck!"

    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
    check_user(@product)
  end

  def edit
    @product = Product.find(params[:id])
    check_user(@product)
  end

  def update
    @product = Product.find(params[:id])
   
    if @product.update(product_params)
      flash[:success] = "Product successfully updated"
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:success] = "Product was successfully deleted"
    
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, images: [], category_ids: [])
  end

  def check_user(product)
    if current_user.id != product.user_id
      flash[:notice] = "You are not authorized to view that content"
      redirect_to root_path
      return
    end
  end
end

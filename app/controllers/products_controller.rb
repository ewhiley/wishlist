class ProductsController < ApplicationController
  def index
    @products = Product.all
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

    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
   
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated"
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = "Product was successfully deleted"
    
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, images: [], category_ids: [])
  end
end

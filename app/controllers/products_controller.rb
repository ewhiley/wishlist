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
    # @categories = Category.all
    @product = Product.new(product_params)
    @product.user = current_user
    # category = Category.find(params[:category_id1])
    # category2 = Category.find(params[:category_id2])
    # category3 = Category.find(params[:category_id3])
    # category4 = Category.find(params[:category_id4])
    # category5 = Category.find(params[:category_id5])
    # @product.categories << category
    # @product.categories << category2
    # @product.categories << category3
    # @product.categories << category4
    # @product.categories << category5
    @product.save

    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all.map{|c| [ c.name, c.id ] }
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

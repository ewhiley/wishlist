class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def create
    @categories = Category.all.map{|c| [ c.name, c.id ] }
    @product = Product.new(product_params)
    @product.user = current_user

    category = Category.find(params[:category_id1])
    category2 = Category.find(params[:category_id2])
    @product.categories << category
    @product.categories << category2
    @product.save

    redirect_to product_path(@product)
  end

  def show
  end

  private
  def product_params
    params.permit(:name, :description, :price, images: [], category_ids: [])
  end
end

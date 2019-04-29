class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def show
  end

  private
  def product_params
    params.permit(:name, :description, :price, images: [])
  end
end

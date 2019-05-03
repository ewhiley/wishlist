class HomeController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @user = current_user
  end
end

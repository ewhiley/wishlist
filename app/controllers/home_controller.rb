class HomeController < ApplicationController
  def index
    @products = Product.all.order('created_at DESC')
    @categories = Category.all
    @user = current_user
  end
end

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    my_products_path #your path
  end
end

class PurchasesController < ApplicationController
  before_action :authenticate_user!
  def show
    @product = Product.find(params[:id])
    @wishlist = Wishlist.find(params[:wishlist_id])
  end

  def create
    # Amount in cents
    @user = User.find_by email: params[:stripeEmail]
    @product = Product.find(params[:format])
    @wishlist = Wishlist.find(params[:wishlist_id])
    @amount = ((@product.price) * 100).to_i

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: 'tok_visa',
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'aud',
    })
  
    @purchase = Purchase.new(buyer_id: @user.id, seller_id: @product.user.id, product_id: @product.id, price: @product.price, wishlist_id: @wishlist.id)
    @purchase.save

    @product.toggle!(:sold)
    @wishlist.toggle!(:completed)
   
    
    flash[:success] = "Thank you for your purchase #{@user.profile.name}! We hope you enjoy your new #{@product.name}. Check your Wishlist history to contact seller"

    redirect_to my_wishlist_history_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to purchase_path(@product)
  end

  def no_wishlist
    id = params[:id]
    @product = Product.find(id)
  end

  def no_wishlist_create
    @product = Product.find(params[:format])
    @user = current_user

    @amount = ((@product.price) * 100).to_i

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: 'tok_visa',
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'aud',
    })
  
    @purchase = Purchase.new(buyer_id: @user.id, seller_id: @product.user.id, product_id: @product.id, price: @product.price, wishlist_id: nil)
    
    @purchase.save

    @product.toggle!(:sold)
   
    flash[:success] = "Thank you for your purchase #{@user.profile.name}! We hope you enjoy your new #{@product.name}. Check your Wishlist history to contact seller"

    redirect_to my_wishlist_history_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to purchase_path(@product)
  end

  private
  def check_user(purchase)
    if current_user.id != purchase.buyer_id
      flash[:notice] = "You are not authorized to view that content"
      redirect_to root_path
      return
    end
  end
end

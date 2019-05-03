class PurchasesController < ApplicationController
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



    
    
    # (buyer_id: @user.id, seller_id: @product.user.id, product_id: @product.id, price: @product.price, wishlist_id: @wishlist.id)

   
    
    flash[:notice] = "Thank you for your purchase! We hope you enjoy #{@product.name}"

    redirect_to my_wishlists_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to purchase_path(@product)
  end

  def no_wishlist
    id = params[:format]
    @product = Product.find(id)
  end

  def no_wishlist_create
    @product = Product.find(params[:id])
  end
end

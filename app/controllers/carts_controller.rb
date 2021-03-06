class CartsController < ApplicationController
  before_filter :initialize_cart

  def add
    @cart.add_item(params[:id])
    session["cart"] = @cart.serialize
    product = Product.find(params[:id])
    redirect_to :back, notice: "Added #{product.name} to the cart"
  end

  def show
    
  end
end

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_cart

  private

  def current_cart
    @current_cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @current_cart = Cart.create
    session[:cart_id] = @current_cart.id
  end
end

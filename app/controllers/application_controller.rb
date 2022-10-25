class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_cart

  private
    # def current_cart
    #   #if session[:cart_id].present?
    #     cart = Cart.find(session[:cart_id])
    #     if cart.present?
    #       @current_cart = cart
    #     else
    #     @current_cart = Cart.create
    #     session[:cart_id] = @current_cart.id
    #     end
    #   #end
    # end

  def current_cart
    @current_cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @current_cart = Cart.create
    session[:cart_id] = @current_cart.id
  end
end

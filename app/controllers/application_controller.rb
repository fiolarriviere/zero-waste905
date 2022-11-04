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

# before_action :configure_permitted_parameters, if: :devise_controller?
#   def configure_permitted_parameters

#     devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

#     devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :photo])
#   end

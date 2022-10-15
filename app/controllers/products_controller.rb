class ProductsController < ApplicationController
  before_action :set_products, only: %w[show edit update destroy]

  def index
    @products = Product.all
  end

  def new

  end

  def show

  end

  def edit
  end

  # def create
  #   @place = place_params
  #   @reservation = Reservation.new(reservation_params)
  #   @reservation.status = "not avaible"
  #   @reservation.place_id = @place.id
  #   @reservation.user_id = current_user.id
  #   if (@reservation.date_finish - @reservation.date_start).zero?
  #     @reservation.total_price = @place.price
  #   else
  #     @reservation.total_price = (@reservation.date_finish - @reservation.date_start) * @place.price
  #   end
  #   if @reservation.save
  #     redirect_to reservation_path(@reservation)
  #     flash[:notice] = "Reserva creada con éxito"
  #   else
  #     render :new, status: :unprocessable_entity
  #     flash[:notice] = "Error - Revise los datos de la reserva"
  #   end
  # end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:reservation).permit(:date_start, :date_finish, :status, :start_time,
      :finish_time, :place_id, :user_id
    )
  end
end

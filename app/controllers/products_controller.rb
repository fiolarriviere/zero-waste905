class ProductsController < ApplicationController
  before_action :set_products, only: %w[show edit update destroy]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.id = current_user.id
  end

  def create
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    @product.category_id = @category.id
    if @product.save
      redirect_to root_path
      flash[:notice] = "Producto creada con éxito"
    else
      render :new, status: :unprocessable_entity
      flash[:notice] = "Error - Revise los datos del producto"
    end
  end

  def edit
    @category = Category.new
    @product = Product.find(params[:id])
  end

  def update
    # @product.update(Product.find(params[:id]))
    redirect_to root_path
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(
      :name, :original_price, :discount, :price, :stock, :expiration_date,
      :category_id, :user_id, :photos[]
    )
  end
end

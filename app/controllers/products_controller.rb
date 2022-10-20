class ProductsController < ApplicationController
  before_action :set_products, only: %w[show edit update destroy]
  # before_action :set_category, only: %w[edit update destroy]

  def index
    @products = Product.all
  end

  def show
    # set_products
    # @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # esta linea recien la puse
    @category = Category.new
    @product.user_id = current_user.id
    # set_products
    @product = Product.new(products_params)
    # se calcurá de forma automática pero se mostrará
    # en pantallasin se modificada
    @product.price = @original_price / @discount
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
    # set_products
    @product = Product.find(params[:id])
    @product.update(params[:product])
    redirect_to root_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    raise
    # No need for app/views/restaurants/destroy.html.erb
    # redirect_to products_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def set_products
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(
      :name, :original_price, :discount, :price, :stock, :expiration_date,
      :category_id,
      :user_id,
      :photos[]
    )
  end
end

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
  end

  def create
    # esta linea recien la puse
    @category = Category.new
    @product.user_id = current_user.id
    @product = Product.new(products_params)
    # se calcurá de forma automática pero se mostrará en pantalla sin se modificada
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
    redirect_to root_path
  end

  def destroy
    if @product.destroy
      redirect_to products_path
      flash[:notice] = "Producto eliminado con éxito"
    else
      render :new, status: :unprocessable_entity
      flash[:notice] = "Error - Revise los datos del producto"
    end
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

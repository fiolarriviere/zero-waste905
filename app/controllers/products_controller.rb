class ProductsController < ApplicationController
  before_action :set_products, only: %w[show edit update destroy]

  def index
    if params[:category_id].present?
      @products = Product.where(category_id: params[:category_id])
    else
      @products = Product.all
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to product_path(@product)
      flash[:notice] = "Producto creada con éxito"
    else
      render :new, status: :unprocessable_entity
      flash[:notice] = "ERROR - Revise los datos a registrar para crear el Producto"
    end
  end

  def edit
    @category = Category.new
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update!(products_params)
    redirect_to product_path(@product)
    flash[:notice] = "Producto actualizado con éxito"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
    flash[:notice] = "Producto eliminado con éxito"
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
      :name, :original_price, :discount, :stock, :expiration_date, :description,
      :category_id, :user_id, photos: []
    )
  end
end

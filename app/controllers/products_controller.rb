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
    @product = Product.new(products_params)
    @product.user_id = current_user.id
    @product.price = (((@product.discount.to_f / 100) * @product.original_price.to_f) - @product.original_price.to_f).abs
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
    # @product.update(Product.find(params[:id]))
    # set_products
    @product = Product.find(params[:id])
    @product.update(params[:product])
    redirect_to root_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
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
      photos: []
    )
  end
end

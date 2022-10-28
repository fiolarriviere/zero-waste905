class LineItemsController < ApplicationController
  def create
    # # Con esto encuentro los productos asociados y el carro actual
    # @chosen_product = Product.find(params[:product_id])
    # current_cart = @current_cart
    # prueba = line_items.products.find_by(product_id: @chosen_product.id)
    # p prueba
    # #@line_item = LineItem.product_id.find(params[:product_id])
    # if current_cart.line_items.product.find_by(product_id: @chosen_product.id)
    #   #@line_item = current_cart.line_items.find(@chosen_product.id)
    # #if @line_item
    # p "Encontrado"
    #   @line_item.quantity += 1
    # else
    #   @line_item = LineItem.new
    #   @line_item.cart = current_cart
    #   @line_item.product = @chosen_product
    # end
    product = Product.find(params[:product_id])
    @line_item = @current_cart.add_product(product)
    if @line_item.save
      #redirect_to cart_path(current_cart), notice: "Tu producto se ha agregado correctamente"
    else
      render "product/show"
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(@current_cart)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:quantity,:product_id, :cart_id)
  end
end

class LineItem < ApplicationRecord
  belongs_to :cart, optional: true
  belongs_to :product
  belongs_to :order, optional: true

  def total_price
    self.quantity * self.product.price
  end

  def total_items
   self.quantity
  end

  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to cart_path(@line_item.cart_id)
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    else
      flash[:notice] = "No puedes reducir más la cantidad"
    end
    @line_item.save
    redirect_to cart_path(@line_item.cart_id)
  end
end

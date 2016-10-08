class ProductsController < ApplicationController
  def index
    @products = Item.all
    @order_item = current_order.order_items.new
  end

  layout "_application_user" 

end
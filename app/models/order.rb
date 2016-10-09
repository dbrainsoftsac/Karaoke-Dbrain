class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  belongs_to :users

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  def total
      order_items.map { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
      #order_items.map{ |oi| (oi.quantity || 0) * (oi.unit_price || 0) }.sum

    #order_items.sum(&:total_price)
  end

private
  def set_order_status
    self.order_status_id = 1 
    self.users_id = current_user.id ;
  end

  def update_subtotal
    self[:subtotal] = subtotal 
  end
end


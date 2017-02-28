class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :number, presence: true, numericality: {only_integer: true,
    greater_than: I18n.t("mini_number").to_i,
    less_than_or_equal_to: Settings.max_number}
  validates :price, presence: true,
    numericality: {greater_than: Settings.mini_price,
    less_than: Settings.max_price}
end

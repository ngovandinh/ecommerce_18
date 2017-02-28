class Order < ActiveRecord::Base
  belongs_to :user

  has_many :order_items, depentdent: :destroy

  validates :name, resence: true, length: {maximum: Settings.max_name}
  validates :address, presence: true,
    length: {maximum: Settings.max_address}
  validates :phone, presence: true,
    length: {maximum: Settings.max_phone},
    numericality: {only_integer: true}
end

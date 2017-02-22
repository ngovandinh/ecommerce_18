class Order < ActiveRecord::Base
  belongs_to :user

  has_many :order_items, depentdent: :destroy

  validates :name, resence: true, length: {maximum: I18n.t("max_name").to_i}
  validates :address, presence: true,
    length: {maximum: I18n.t("max_address").to_i}
  validates :phone, presence: true,
    length: {maximum: I18n.t("max_phone").to_i},
    numericality: {only_integer: true}
end

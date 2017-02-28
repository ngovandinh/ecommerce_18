class Subcategory < ActiveRecord::Base
  belongs_to :category

  has_many :products, dependent: :destroy
  has_many :requests, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.max_name}
end

class Category < ActiveRecord::Base
  has_many :subcategories, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.max_name}
end

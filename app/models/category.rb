class Category < ActiveRecord::Base
  has_many :subcategories, dependent: :destroy

  validates :name, presence: true, length: {maximum: I18n.t("max_name").to_i}
end

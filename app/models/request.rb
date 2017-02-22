class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :subcategory

  validates :name, presence: true, length: {maximum: I18n.t("max_name").to_i}
end

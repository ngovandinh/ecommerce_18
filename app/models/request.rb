class Request < ActiveRecord::Base
  belongs_to :user
  belongs_to :subcategory

  validates :name, presence: true, length: {maximum: Settings.max_name}
end

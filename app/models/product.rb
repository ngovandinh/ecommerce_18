class Product < ActiveRecord::Base
  belongs_to :subcategory

  has_many :order_items
  has_many :rates, dependent: :destroy

  validates :name, presence: true, length: {maximum: I18n.t("max_name").to_i}
  validates :number,  presence: true, numericality: {only_integer: true,
    greater_than: I18n.t("mini_number").to_i,
    less_than_or_equal_to: I18n.t("max_number").to_i}
  validates :price,  presence: true, numericality: {only_integer: true}
  validate  :image_size
  mount_uploader :image, PictureUploader

  private
  def picture_size
    if picture.size > I18n.t("max_size").to_i.megabytes
      errors.add(:image, "should be less than #{I18n.t "max_size"}MB")
    end
  end
end

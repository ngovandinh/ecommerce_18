class Product < ActiveRecord::Base
  belongs_to :subcategory

  has_many :order_items
  has_many :rates, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.max_name}
  validates :number,  presence: true, numericality: {only_integer: true,
    greater_than: Settings.mini_number,
    less_than_or_equal_to: Settings.max_number}
  validates :price, presence: true,
    numericality: {greater_than: Settings.mini_price,
    less_than: Settings.max_price}
  validate  :image_size
  mount_uploader :image, PictureUploader

  private
  def picture_size
    if picture.size > Settings.max_size.megabytes
      errors.add(:image, "should be less than #{Settings.max_size}MB")
    end
  end
end

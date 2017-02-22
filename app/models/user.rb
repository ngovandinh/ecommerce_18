class User < ActiveRecord::Base
	has_many :requests, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :activities, dependent: :destroy
 
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX } , 
  					uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  has_secure_password

  before_save   :downcase_email
  # Converts email to all lower-case.
  def downcase_email
    self.email = email.downcase
  end  
end

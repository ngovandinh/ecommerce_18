class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :activities, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :requests, dependent: :destroy

  validates :name, presence: true, length: {maximum: I18n.t("max_name").to_i}
  validates :email, presence: true,
    length: {maximum: I18n.t("max_email").to_i},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: I18n.t("mini_password").to_i}, allow_nil: true

  has_secure_password

  before_save :downcase_email
  # Converts email to all lower-case.
  def downcase_email
   self.email = email.downcase
  end
end

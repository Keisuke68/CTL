class User < ApplicationRecord
  before_save { self.email = email.downcase}
  has_many :articles, dependent: :destroy
  validates :username, presence: true,
                       uniqueness: { case_sensitive: false },
                       length: { minimum: 3, maximum: 25}
  VALID_EMAIL_REGAX = /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: {  maximum: 105 },
                    format: { with: VALID_EMAIL_REGAX }
  has_secure_password
  mount_uploader :image, ImageUploader
end

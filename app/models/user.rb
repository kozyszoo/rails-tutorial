class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # binding.pry
  # has_secure_password # Test をする際のみここでエラーになる
  ## You don't have bcrypt installed in your application. Please add it to your Gemfile and run bundle install
  validates :password, presence: true, length: { minimum: 6 }
end

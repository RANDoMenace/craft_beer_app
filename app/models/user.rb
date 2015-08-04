class User < ActiveRecord::Base
  has_many :craft_beers
  has_secure_password
  validates :email, presence: true, uniqueness: true
end

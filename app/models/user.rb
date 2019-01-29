class User < ApplicationRecord
  has_many :items, dependent: :destroy
  
  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
end

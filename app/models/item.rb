class Item < ApplicationRecord
  belongs_to :user
  has_many :logs, :categories
end

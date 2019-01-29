class Item < ApplicationRecord
  belongs_to :user
  has_many :logs, dependent: :destroy
  has_many :categories, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :user_id }
end

class Category < ApplicationRecord
  belongs_to :item
  has_many :logs, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :item_id }
end

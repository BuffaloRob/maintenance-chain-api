class Log < ApplicationRecord
  belongs_to :item
  belongs_to :category

  validates :date_performed, :date_due, :cost, presence: true
end

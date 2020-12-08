class Station < ApplicationRecord
  with_options presence: true do
    validates :route, length: { maximum: 100 }
    validates :name, length: { maximum: 80 }
    validates :minutes_foot, length: { maximum: 4 }, numericality: { greater_than_or_equal_to: 0 }
  end
  belongs_to :property
end

class Property < ApplicationRecord
  with_options presence: true do
    validates :name, length: { maximum: 255 }
    validates :rent, numericality: { greater_than_or_equal_to: 0 }
    validates :address, length: { maximum: 255 }
    validates :age, length: { maximum: 4 }, numericality: { greater_than_or_equal_to: 0 }
  end
end

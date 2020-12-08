class Property < ApplicationRecord
  with_options presence: true do
    validates :name, length: { maximum: 255 }
    validates :rent, numericality: { greater_than_or_equal_to: 0 }
    validates :address, length: { maximum: 255 }
    validates :age, length: { maximum: 4 }, numericality: { greater_than_or_equal_to: 0 }
  end
  validates :note, length: { maximum: 300 }, allow_blank: true
  has_many :stations, dependent: :destroy, inverse_of: :property
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end

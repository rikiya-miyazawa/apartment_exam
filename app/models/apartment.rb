class Apartment < ApplicationRecord
  validates :apartment_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :year_old, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end

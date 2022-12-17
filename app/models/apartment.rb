class Apartment < ApplicationRecord
  validates :apartment_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :year_old, presence: true
  validates :remarks, presence: true
end

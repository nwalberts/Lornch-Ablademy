class Student < ActiveRecord::Base
  validates :name, presence: true

  has_many :signups
  has_many :clinics, through: :signups
end

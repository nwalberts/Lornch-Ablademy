class Student < ActiveRecord::Base
  has_many :signups
  has_many :clinics, through: :signups

end

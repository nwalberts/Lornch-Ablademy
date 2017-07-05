class Clinic < ActiveRecord::Base
  has_many :comments
  has_many :signups
  has_many :students, through: :signups

  validates :title, presence: true 

end

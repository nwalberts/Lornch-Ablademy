class Clinic < ActiveRecord::Base
  validates :title, presence: true
  validates :speaker, presence: true

  has_many :comments

  has_many :signups
  has_many :students, through: :signups
end

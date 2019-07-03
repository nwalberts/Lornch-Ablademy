class Signup < ActiveRecord::Base
  validates :clinic_id, presence: true
  validates :student_id, presence: true

  belongs_to :clinic
  belongs_to :student
end

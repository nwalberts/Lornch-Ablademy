class Signup < ActiveRecord::Base
  belongs_to :clinic
  belongs_to :student

end

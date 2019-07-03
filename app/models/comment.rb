class Comment < ActiveRecord::Base
  validates :asker, presence: true
  validates :body, presence: true
  validates :clinic_id, presence: true

  belongs_to :clinic
end

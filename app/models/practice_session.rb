class PracticeSession < ApplicationRecord
  has_many :section_practices, dependent: :destroy
  has_many :sections, through: :section_practices
  has_many :recordings, dependent: :destroy

  validates :practiced_on, :duration, presence: true
end

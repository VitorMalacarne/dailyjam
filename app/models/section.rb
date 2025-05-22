class Section < ApplicationRecord
  belongs_to :song
  has_many :section_practices, dependent: :destroy
  has_many :practice_sessions, through: :section_practices
  has_many :recordings, dependent: :nullify

  validates :name, :start_time, :end_time, presence: true
end

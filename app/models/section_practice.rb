class SectionPractice < ApplicationRecord
  belongs_to :practice_session
  belongs_to :section

  validates :accuracy, numericality: { in: 0..100 }, allow_nil: true
end

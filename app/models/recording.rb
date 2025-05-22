class Recording < ApplicationRecord
  belongs_to :practice_session
  belongs_to :section, optional: true

  has_one_attached :file

  validates :file, presence: true
end

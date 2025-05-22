class Song < ApplicationRecord
  has_many :sections, dependent: :destroy
  
  validates :title, presence: true, length: { minimum: 1, maximum: 100 }
  validates :artist, presence: true, length: { maximum: 100 }
  validates :instrument, presence: true, length: { maximum: 50 }
  validates :notes, length: { maximum: 1000 }

  scope :by_title, -> { order(:title) }
  scope :by_artist, ->(artist) { where(artist: artist) }
  scope :by_instrument, ->(instrument) { where(instrument: instrument) }

  def display_name
    "#{title} - #{artist}"
  end

  def has_sections?
    sections.any?
  end

  def average_accuracy
    return 0 if sections.empty?
    
    sections.joins(:practice_records)
            .average('practice_records.accuracy')
            .to_f
            .round(2)
  end
end
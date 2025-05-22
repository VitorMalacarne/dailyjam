class DashboardController < ApplicationController
  def index
    @songs = Song.includes(:sections).order(:title)
    @recent_practice_sessions = PracticeSession.order(practiced_on: :desc).limit(5)

    @difficult_sections = Section
      .joins(:section_practices)
      .select("sections.*, AVG(section_practices.accuracy) as avg_accuracy")
      .group("sections.id")
      .order("avg_accuracy ASC")
      .limit(5)
  end
end

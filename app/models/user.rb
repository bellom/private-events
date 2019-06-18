class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', foreign_key: "creator_id"
  has_many :EventAttendances, foreign_key: 'attendee_id'
  has_many :attended, through: :EventAttendances, source: 'eventAttended'

  def upcoming_events
    self.attended.where('date > ?', Date.current)
  end

  def previous_events
    self.attended.where('date < ?', Date.current)
  end
end

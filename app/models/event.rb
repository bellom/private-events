class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :EventAttendances, foreign_key: 'EventAttended_id'
  has_many :attendees,through: :EventAttendances, source: 'attendee'
end

class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :attendances, foreign_key: 'attended_event_id'
    has_many :attendees, class_name: 'User', through: 'attendances'

end

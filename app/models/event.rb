class Event < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: 'User'
  has_and_belongs_to_many :attendance, join_table: 'attendances', class_name: 'Attendance'

  scope :upcoming_events, -> { where('date > ?', Date.today) }
  scope :previous_events, -> { where('date < ?', Date.today) }
end

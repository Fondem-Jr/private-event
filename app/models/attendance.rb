class Attendance < ApplicationRecord
  belongs_to :user, foreign_key: :user_id, class_name: 'User', dependent: :destroy
  belongs_to :event, foreign_key: :event_id, class_name: 'Event', dependent: :destroy
end

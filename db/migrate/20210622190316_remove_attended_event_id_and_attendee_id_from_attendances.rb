class RemoveAttendedEventIdAndAttendeeIdFromAttendances < ActiveRecord::Migration[6.1]
  def change
    remove_column :attendances, :attended_event_id, :integer
    remove_column :attendances, :attendee_id, :integer
  end
end

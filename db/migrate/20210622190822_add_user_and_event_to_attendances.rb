class AddUserAndEventToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_reference :attendances, :user, null: false, foreign_key: true
    add_reference :attendances, :event, null: false, foreign_key: true
  end
end

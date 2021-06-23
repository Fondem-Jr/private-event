class RemoveUserIdAndCreatorIdFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :user_id, :integer
    remove_column :events, :creator_id, :integer
  end
end

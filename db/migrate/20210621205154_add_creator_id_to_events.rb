class AddCreatorIdToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :creator_id, :integer
  end
end

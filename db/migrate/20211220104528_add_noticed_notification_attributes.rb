class AddNoticedNotificationAttributes < ActiveRecord::Migration[7.0]
  def change
    add_reference :notifications, :recipient, polymorphic: true, null: false
    add_column :notifications, :type, :string
    add_column :notifications, :params, :json
    add_column :notifications, :read_at, :datetime
    add_index :notifications, :read_at
  end
end

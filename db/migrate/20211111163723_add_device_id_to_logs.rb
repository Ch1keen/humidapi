class AddDeviceIdToLogs < ActiveRecord::Migration[6.1]
  def change
    add_column :logs, :device_id, :integer
  end
end

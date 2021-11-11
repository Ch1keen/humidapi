class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.float :humidity
      t.float :temperature
      t.float :pm2p5
      t.float :pm10

      t.timestamps
    end
  end
end

class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :description
      t.string :cost
      t.datetime :start_time
      t.datetime :stop_time

      t.timestamps
    end
  end
end

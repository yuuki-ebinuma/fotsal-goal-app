class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      
      t.integer :operation_id,                  null: false,foreign_key: true
      t.integer :event_month_id,                null: false
      t.integer :event_date_id,                 null: false
      t.integer :event_time_id,                 null: false
      t.integer :entry_participation_id,        null: false
      t.integer :fee,                           null: false
      t.string :event_address,                  null: false
      t.string :event_description,              null: false
      t.string :event_title,                    null: false
      t.timestamps
    end
  end
end

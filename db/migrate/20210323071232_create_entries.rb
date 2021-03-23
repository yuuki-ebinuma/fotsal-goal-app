class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :tournament_id,      null: false,foreign_key: true
      t.integer :user_id,            null: false,foreign_key: true
      t.string  :team_name,          null: false
      t.string  :team_captain,       null: false
      t.integer :phone,              null: false
      t.timestamps
    end
  end
end

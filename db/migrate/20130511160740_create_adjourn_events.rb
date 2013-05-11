class CreateAdjournEvents < ActiveRecord::Migration
  def change
    create_table :adjourn_events do |t|
      t.string :name
      t.date :from_date
      t.date :to_date
      t.time :from_time
      t.time :to_time
      t.boolean :full_day
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :adjourn_events, :user_id
  end
end

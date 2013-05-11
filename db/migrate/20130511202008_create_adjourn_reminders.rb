class CreateAdjournReminders < ActiveRecord::Migration
  def change
    create_table :adjourn_reminders do |t|
      t.integer :minutes_before
      t.references :event

      t.timestamps
    end
    add_index :adjourn_reminders, :event_id
  end
end

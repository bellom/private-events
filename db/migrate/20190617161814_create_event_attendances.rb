class CreateEventAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendances do |t|
      t.integer :attendee_id
      t.integer :eventAttended_id

      t.timestamps
    end
  end
end

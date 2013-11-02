class CreateMeetingTimes < ActiveRecord::Migration
  def change
    create_table :meeting_times do |t|
      t.timestamp :time
      t.integer :meeting_id

      t.timestamps
    end
  end
end

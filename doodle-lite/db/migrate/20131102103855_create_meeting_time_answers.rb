class CreateMeetingTimeAnswers < ActiveRecord::Migration
  def change
    create_table :meeting_time_answers do |t|
      t.integer :answer_id
      t.integer :meeting_time_id

      t.timestamps
    end
  end
end

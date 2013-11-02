class AddStateToMeetingTimeAnswer < ActiveRecord::Migration
  def change
    add_column :meeting_time_answers, :state, :integer
  end
end

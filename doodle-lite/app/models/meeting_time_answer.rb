class MeetingTimeAnswer < ActiveRecord::Base
  belongs_to :meeting_time
  belongs_to :answer

end

class MeetingTime < ActiveRecord::Base
  belongs_to :meeting
  has_many :meeting_time_answers
end

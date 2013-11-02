class Answer < ActiveRecord::Base
  has_many :meeting_time_answers
  belongs_to :meeting
  belongs_to :user
end

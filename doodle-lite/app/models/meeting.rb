class Meeting < ActiveRecord::Base
  has_many :meeting_times
  has_many :answers
end

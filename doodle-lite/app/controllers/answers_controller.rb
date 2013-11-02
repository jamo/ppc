class AnswersController < ApplicationController
  before_filter :set_meeting

  def create
   # raise params.inspect
    #permitted_params =  create_params
    user = User.create(nickname: params[:nickname])
    meeting = Meeting.find_by_id!(params[:meeting_id])
    answer = Answer.create(user: user, meeting: meeting)

    params[:selected].each do |meeting_time_id|
      meeting_time =  meeting.meeting_times.where(id: meeting_time_id).first
      m = MeetingTimeAnswer.create(meeting_time: meeting_time)
      answer.meeting_time_answers << m

    end
    answer.save!
  end

  def index
    @answers = @meeting.answers.includes(:meeting_time_answers)
  end

  private

  def create_params
    params.permit(:nickname, :meeting_id, :selected)
  end

  def set_meeting
    @meeting = Meeting.find(params[:meeting_id])
  end
end

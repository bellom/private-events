class EventAttendancesController < ApplicationController
  def new
    # @event_attendance = EventAttendance.new
    # @event = Event.all
  end

  def create
    user_name = params[:attendee_name]
    user_id = User.where('name = ?', user_name)
    p user_id
    p params[:event_id]
    @event_attendance = EventAttendance.create(attendee_id: user_id[0].id, eventAttended_id: params[:event_id].to_i)
    if @event_attendance.save
      redirect_to events_path
    else
      redirect_to attendance_new_path
    end

  end

  private
  def attendance_params
    params.require(:event_attendance).permit(:attendee_id, :eventAttended_id)
  end
end

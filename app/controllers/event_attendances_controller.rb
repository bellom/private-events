class EventAttendancesController < ApplicationController
  def new
    @event_attendance = EventAttendance.new
  end

  def create
    @event_attendance = EventAttendance.create(attendance_params)
    if @event_attendance.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  private
  def attendance_params
    params.require(:event_attendance).permit(:attendee_id, :eventAttended_id)
  end
end

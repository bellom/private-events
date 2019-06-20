class EventAttendancesController < ApplicationController

  before_action :attendance_check, only: [:create]

  def new
  end

  def create
    @event_attendance = EventAttendance.create(attendance_params)
    if @event_attendance.save
      redirect_to events_path
    else
      redirect_to attendance_new_path
    end

  end

  private
  def attendance_params
    params.permit(:attendee_id, :eventAttended_id)
  end

  def attendance_check
    if  !EventAttendance.where( attendee_id: params[:attendee_id], eventAttended_id: params[:eventAttended_id]).empty?
      redirect_to attendance_new_path
    end

  end

end

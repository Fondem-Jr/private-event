class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def create
    @attendance = Attendance.new(attendance_params)

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to root_path, notice: 'Attendance was successfully created.' }
        format.json { render :index, status: :created, location: @attendance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def attendance_params
    params.permit(:event_id, :user_id)
  end
end

class AttendancesController < ApplicationController
    def index
        @attendances = Attendance.new
    end
    def create
        @event = current_user.attended_events.find_by_id(params[:attended_event_id])
        if @event.nil?
          @attendance = current_user.attendances.build(attended_event_id: params[:attended_event_id])
          if @attendance.save
            redirect_to root_path
          else
            redirect_to current_user
          end
        else
          redirect_to root_path
        end
      end
end

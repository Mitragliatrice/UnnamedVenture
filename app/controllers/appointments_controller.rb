class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :destroy]


  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def create
    @appointment = Appointment.new(set_apointment_params)
  end

  def destroy
  end


  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_apointment_params
    params.require(:appointment).permit(:name,
                                        :phone,
                                        :street,
                                        :city,
                                        :state
    )
  end
end
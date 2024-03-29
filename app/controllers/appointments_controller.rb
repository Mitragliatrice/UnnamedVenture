class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :destroy]
  invisible_captcha only: [:create, :update], honeypot: :subtitle
  access all: [:new, :create], admin: :all


  def index
    @appointments = Appointment.all
  end

  def spam
    redirect_to root_path
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def create
    @appointment = Appointment.new(set_apointment_params)
    
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to root_path, notice: 'Estimate was successfully created.' }
      else
        format.html { render :new }
      end
    end
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
                                        :state,
                                        :status,
                                        :subtitle
    )
  end
end
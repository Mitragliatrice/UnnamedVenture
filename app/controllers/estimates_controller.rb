class EstimatesController < ApplicationController
  before_action :set_estimate, only: [:show, :edit, :update, :destroy]
  invisible_captcha only: [:create, :update], honeypot: :subtitle
  access all: [:new, :create], admin: :all

  # GET /estimates
  # GET /estimates.json
  def index
    @estimates = Estimate.all
  end

  def spam
    redirect_to root_path
  end
  # GET /estimates/1
  # GET /estimates/1.json
  def show
  end

  # GET /estimates/new
  def new
    @estimate = Estimate.new
  end

  # GET /estimates/1/edit
  def edit
  end

  # POST /estimates
  # POST /estimates.json
  def create
    @estimate = Estimate.new(estimate_params)

    respond_to do |format|
      if @estimate.save
        format.html { redirect_to root_path, notice: 'Estimate was successfully created.' }
        format.json { render :show, status: :created, location: @estimate }
      else
        format.html { render :new }
        format.json { render json: @estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estimates/1
  # PATCH/PUT /estimates/1.json
  def update
    respond_to do |format|
      if @estimate.update(estimate_params)
        format.html { redirect_to @estimate, notice: 'Estimate was successfully updated.' }
        format.json { render :show, status: :ok, location: @estimate }
      else
        format.html { render :edit }
        format.json { render json: @estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estimates/1
  # DELETE /estimates/1.json
  def destroy
    @estimate.destroy
    respond_to do |format|
      format.html { redirect_to estimates_url, notice: 'Estimate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estimate
      @estimate = Estimate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estimate_params
      params.require(:estimate).permit(:currently_listed, 
                                      :prop_owner_name, 
                                      :contact_name, 
                                      :email, 
                                      :phone, 
                                      :street, 
                                      :street2, :city, 
                                      :state, 
                                      :zip, 
                                      :beds, 
                                      :baths, 
                                      :home_sf,
                                      :prop_sf, 
                                      :num_garages, 
                                      :pool, 
                                      :spa, 
                                      :upgrades, 
                                      :damage, 
                                      :photo, 
                                      :tod_call, 
                                      :status,
                                      :subtitle
                                      )
    end
end

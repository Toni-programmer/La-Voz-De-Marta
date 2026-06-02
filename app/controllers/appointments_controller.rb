class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  # GET /appointments or /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1 or /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    load_form_collections
  end

  # GET /appointments/1/edit
  def edit
    load_form_collections
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: "Cita creada correctamente." }
        format.json { render :show, status: :created, location: @appointment }
      else
        load_form_collections
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @appointment.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: "Cita actualizada correctamente.", status: :see_other }
        format.json { render :show, status: :ok, location: @appointment }
      else
        load_form_collections
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @appointment.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy!

    respond_to do |format|
      format.html { redirect_to appointments_path, notice: "Cita eliminada.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.expect(appointment: [ :patient_id, :therapist_id, :service_id, :scheduled_at, :status, :notes ])
    end

    def load_form_collections
      @patients = Patient.order(:full_name)
      @therapists = Therapist.order(:name)
      @services = Service.order(:name)
    end
end

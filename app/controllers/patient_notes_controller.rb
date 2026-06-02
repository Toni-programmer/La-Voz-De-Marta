class PatientNotesController < ApplicationController
  before_action :set_patient_note, only: %i[ show edit update destroy ]

  # GET /patient_notes or /patient_notes.json
  def index
    @patient_notes = PatientNote.all
  end

  # GET /patient_notes/1 or /patient_notes/1.json
  def show
  end

  # GET /patient_notes/new
  def new
    @patient_note = PatientNote.new
    load_form_collections
  end

  # GET /patient_notes/1/edit
  def edit
    load_form_collections
  end

  # POST /patient_notes or /patient_notes.json
  def create
    @patient_note = PatientNote.new(patient_note_params)

    respond_to do |format|
      if @patient_note.save
        format.html { redirect_to @patient_note, notice: "Nota creada correctamente." }
        format.json { render :show, status: :created, location: @patient_note }
      else
        load_form_collections
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @patient_note.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /patient_notes/1 or /patient_notes/1.json
  def update
    respond_to do |format|
      if @patient_note.update(patient_note_params)
        format.html { redirect_to @patient_note, notice: "Nota actualizada correctamente.", status: :see_other }
        format.json { render :show, status: :ok, location: @patient_note }
      else
        load_form_collections
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @patient_note.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /patient_notes/1 or /patient_notes/1.json
  def destroy
    @patient_note.destroy!

    respond_to do |format|
      format.html { redirect_to patient_notes_path, notice: "Nota eliminada.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_note
      @patient_note = PatientNote.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def patient_note_params
      params.expect(patient_note: [ :patient_id, :content, :session_date ])
    end

    def load_form_collections
      @patients = Patient.order(:full_name)
    end
end

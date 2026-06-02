require "test_helper"

class PatientNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_note = patient_notes(:one)
  end

  test "should get index" do
    get patient_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_note_url
    assert_response :success
  end

  test "should create patient_note" do
    assert_difference("PatientNote.count") do
      post patient_notes_url, params: { patient_note: { content: @patient_note.content, patient_id: @patient_note.patient_id, session_date: @patient_note.session_date } }
    end

    assert_redirected_to patient_note_url(PatientNote.last)
  end

  test "should show patient_note" do
    get patient_note_url(@patient_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_note_url(@patient_note)
    assert_response :success
  end

  test "should update patient_note" do
    patch patient_note_url(@patient_note), params: { patient_note: { content: @patient_note.content, patient_id: @patient_note.patient_id, session_date: @patient_note.session_date } }
    assert_redirected_to patient_note_url(@patient_note)
  end

  test "should destroy patient_note" do
    assert_difference("PatientNote.count", -1) do
      delete patient_note_url(@patient_note)
    end

    assert_redirected_to patient_notes_url
  end
end

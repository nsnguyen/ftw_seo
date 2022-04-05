require "application_system_test_case"

class QuestionAudiosTest < ApplicationSystemTestCase
  setup do
    @question_audio = question_audios(:one)
  end

  test "visiting the index" do
    visit question_audios_url
    assert_selector "h1", text: "Question audios"
  end

  test "should create question audio" do
    visit question_audios_url
    click_on "New question audio"

    fill_in "Answer audio", with: @question_audio.answer_audio
    fill_in "Id", with: @question_audio.id
    fill_in "Question audio", with: @question_audio.question_audio
    fill_in "Question", with: @question_audio.question_id
    click_on "Create Question audio"

    assert_text "Question audio was successfully created"
    click_on "Back"
  end

  test "should update Question audio" do
    visit question_audio_url(@question_audio)
    click_on "Edit this question audio", match: :first

    fill_in "Answer audio", with: @question_audio.answer_audio
    fill_in "Id", with: @question_audio.id
    fill_in "Question audio", with: @question_audio.question_audio
    fill_in "Question", with: @question_audio.question_id
    click_on "Update Question audio"

    assert_text "Question audio was successfully updated"
    click_on "Back"
  end

  test "should destroy Question audio" do
    visit question_audio_url(@question_audio)
    click_on "Destroy this question audio", match: :first

    assert_text "Question audio was successfully destroyed"
  end
end

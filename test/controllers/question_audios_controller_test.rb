require "test_helper"

class QuestionAudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_audio = question_audios(:one)
  end

  test "should get index" do
    get question_audios_url
    assert_response :success
  end

  test "should get new" do
    get new_question_audio_url
    assert_response :success
  end

  test "should create question_audio" do
    assert_difference("QuestionAudio.count") do
      post question_audios_url, params: { question_audio: { answer_audio: @question_audio.answer_audio, id: @question_audio.id, question_audio: @question_audio.question_audio, question_id: @question_audio.question_id } }
    end

    assert_redirected_to question_audio_url(QuestionAudio.last)
  end

  test "should show question_audio" do
    get question_audio_url(@question_audio)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_audio_url(@question_audio)
    assert_response :success
  end

  test "should update question_audio" do
    patch question_audio_url(@question_audio), params: { question_audio: { answer_audio: @question_audio.answer_audio, id: @question_audio.id, question_audio: @question_audio.question_audio, question_id: @question_audio.question_id } }
    assert_redirected_to question_audio_url(@question_audio)
  end

  test "should destroy question_audio" do
    assert_difference("QuestionAudio.count", -1) do
      delete question_audio_url(@question_audio)
    end

    assert_redirected_to question_audios_url
  end
end

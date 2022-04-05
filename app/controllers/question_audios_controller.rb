class QuestionAudiosController < ApplicationController
  before_action :set_question_audio, only: %i[ show edit update destroy ]

  # GET /question_audios or /question_audios.json
  def index
    @question_audios = QuestionAudio.all
  end

  # GET /question_audios/1 or /question_audios/1.json
  def show
  end

  # GET /question_audios/new
  def new
    @question_audio = QuestionAudio.new
  end

  # GET /question_audios/1/edit
  def edit
  end

  # POST /question_audios or /question_audios.json
  def create
    @question_audio = QuestionAudio.new(question_audio_params)

    respond_to do |format|
      if @question_audio.save
        format.html { redirect_to question_audio_url(@question_audio), notice: "Question audio was successfully created." }
        format.json { render :show, status: :created, location: @question_audio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question_audio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_audios/1 or /question_audios/1.json
  def update
    respond_to do |format|
      if @question_audio.update(question_audio_params)
        format.html { redirect_to question_audio_url(@question_audio), notice: "Question audio was successfully updated." }
        format.json { render :show, status: :ok, location: @question_audio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question_audio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_audios/1 or /question_audios/1.json
  def destroy
    @question_audio.destroy

    respond_to do |format|
      format.html { redirect_to question_audios_url, notice: "Question audio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_audio
      @question_audio = QuestionAudio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_audio_params
      params.require(:question_audio).permit(:id, :question_id, :question_audio, :answer_audio)
    end
end

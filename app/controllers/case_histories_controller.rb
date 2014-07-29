class CaseHistoriesController < ApplicationController
  before_action :set_case_history, only: [:show, :edit, :update, :destroy]

  # GET /case_histories
  # GET /case_histories.json
  def index
    @case_histories = CaseHistory.all
  end

  # GET /case_histories/1
  # GET /case_histories/1.json
  def show
  end

  # GET /case_histories/new
  def new
    @case_history = CaseHistory.new
  end

  # GET /case_histories/1/edit
  def edit
  end

  # POST /case_histories
  # POST /case_histories.json
  def create
    @case_history = CaseHistory.new(case_history_params)

    respond_to do |format|
      if @case_history.save
        format.html { redirect_to @case_history, notice: 'Case history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @case_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @case_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_histories/1
  # PATCH/PUT /case_histories/1.json
  def update
    respond_to do |format|
      if @case_history.update(case_history_params)
        format.html { redirect_to @case_history, notice: 'Case history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @case_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_histories/1
  # DELETE /case_histories/1.json
  def destroy
    @case_history.destroy
    respond_to do |format|
      format.html { redirect_to case_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_history
      @case_history = CaseHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_history_params
      params.require(:case_history).permit(:company_name, :start_at, :end_at, :title, :mission_title, :mission_description, :solution_title, :solution_description, :result_title, :result_description, :background1, :background_image, :background_title, :background_mission, :background_solution, :background_result, :background_image_history, :background_logo,:title_text_color, :mission_text_color, :solution_text_color, :result_text_color)
    end
end

class TrainingRecordsController < ApplicationController
  before_action :set_training_record, only: [:show, :edit, :update, :destroy, :download]

  # GET /training_records
  # GET /training_records.json
  def index
    @training_records = TrainingRecord.all
  end

  # GET /training_records/1
  # GET /training_records/1.json
  def show
  end

  # GET /training_records/new
  def new
    @training_record = TrainingRecord.new
  end

  # GET /training_records/1/edit
  def edit
  end

  # POST /training_records
  # POST /training_records.json
  def create
    @training_record = current_user.training_records.new(training_record_params)
    @training_record.part = 'push_up' unless @training_record.part.present?

    respond_to do |format|
      if @training_record.save
        format.html { redirect_to @training_record, notice: 'Training record was successfully created.' }
        format.json { render :show, status: :created, location: @training_record }
      else
        format.html { render :new }
        format.json { render json: @training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_records/1
  # PATCH/PUT /training_records/1.json
  def update
    respond_to do |format|
      if @training_record.update(training_record_params)
        format.html { redirect_to @training_record, notice: 'Training record was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_record }
      else
        format.html { render :edit }
        format.json { render json: @training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_records/1
  # DELETE /training_records/1.json
  def destroy
    @training_record.destroy
    respond_to do |format|
      format.html { redirect_to training_records_url, notice: 'Training record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    # ref: https://github.com/carrierwaveuploader/carrierwave#activerecord
    filepath = @training_record.video.current_path
    stat = File::stat(filepath)
    send_file(filepath, :filename => @training_record.video_identifier, :length => stat.size)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_record
      @training_record = TrainingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_record_params
      params.require(:training_record).permit(:title, :video)
    end
end

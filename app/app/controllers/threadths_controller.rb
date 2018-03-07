class ThreadthsController < ApplicationController
  before_action :set_threadth, only: [:show, :edit, :update, :destroy]

  # GET /threadths
  # GET /threadths.json
  def index
    @threadths = Threadth.all
  end

  # GET /threadths/1
  # GET /threadths/1.json
  def show
  end

  # GET /threadths/new
  def new
    @threadth = Threadth.new
  end

  # GET /threadths/1/edit
  def edit
  end

  # POST /threadths
  # POST /threadths.json
  def create
    @threadth = Threadth.new(threadth_params)

    respond_to do |format|
      if @threadth.save
        format.html { redirect_to @threadth, notice: 'Threadth was successfully created.' }
        format.json { render :show, status: :created, location: @threadth }
      else
        format.html { render :new }
        format.json { render json: @threadth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /threadths/1
  # PATCH/PUT /threadths/1.json
  def update
    respond_to do |format|
      if @threadth.update(threadth_params)
        format.html { redirect_to @threadth, notice: 'Threadth was successfully updated.' }
        format.json { render :show, status: :ok, location: @threadth }
      else
        format.html { render :edit }
        format.json { render json: @threadth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /threadths/1
  # DELETE /threadths/1.json
  def destroy
    @threadth.destroy
    respond_to do |format|
      format.html { redirect_to threadths_url, notice: 'Threadth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_threadth
      @threadth = Threadth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def threadth_params
      params.require(:threadth).permit(:id, :value)
    end
end

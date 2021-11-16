class Testemongos123sController < ApplicationController
  before_action :set_testemongos123, only: %i[ show edit update destroy ]

  # GET /testemongos123s or /testemongos123s.json
  def index
    @testemongos123s = Testemongos123.all
  end

  # GET /testemongos123s/1 or /testemongos123s/1.json
  def show
  end

  # GET /testemongos123s/new
  def new
    @testemongos123 = Testemongos123.new
  end

  # GET /testemongos123s/1/edit
  def edit
  end

  # POST /testemongos123s or /testemongos123s.json
  def create
    @testemongos123 = Testemongos123.new(testemongos123_params)

    respond_to do |format|
      if @testemongos123.save
        format.html { redirect_to @testemongos123, notice: "Testemongos123 was successfully created." }
        format.json { render :show, status: :created, location: @testemongos123 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testemongos123.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testemongos123s/1 or /testemongos123s/1.json
  def update
    respond_to do |format|
      if @testemongos123.update(testemongos123_params)
        format.html { redirect_to @testemongos123, notice: "Testemongos123 was successfully updated." }
        format.json { render :show, status: :ok, location: @testemongos123 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testemongos123.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testemongos123s/1 or /testemongos123s/1.json
  def destroy
    @testemongos123.destroy
    respond_to do |format|
      format.html { redirect_to testemongos123s_url, notice: "Testemongos123 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testemongos123
      @testemongos123 = Testemongos123.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testemongos123_params
      params.require(:testemongos123).permit(:user, :password, :email)
    end
end

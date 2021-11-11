class TesteMongosController < ApplicationController
  before_action :set_teste_mongo, only: %i[ show edit update destroy ]

  # GET /teste_mongos or /teste_mongos.json
  def index
    @teste_mongos = TesteMongo.all
  end

  # GET /teste_mongos/1 or /teste_mongos/1.json
  def show
  end

  # GET /teste_mongos/new
  def new
    @teste_mongo = TesteMongo.new
  end

  # GET /teste_mongos/1/edit
  def edit
  end

  # POST /teste_mongos or /teste_mongos.json
  def create
    @teste_mongo = TesteMongo.new(teste_mongo_params)

    respond_to do |format|
      if @teste_mongo.save
        format.html { redirect_to @teste_mongo, notice: "Teste mongo was successfully created." }
        format.json { render :show, status: :created, location: @teste_mongo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teste_mongo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teste_mongos/1 or /teste_mongos/1.json
  def update
    respond_to do |format|
      if @teste_mongo.update(teste_mongo_params)
        format.html { redirect_to @teste_mongo, notice: "Teste mongo was successfully updated." }
        format.json { render :show, status: :ok, location: @teste_mongo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teste_mongo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teste_mongos/1 or /teste_mongos/1.json
  def destroy
    @teste_mongo.destroy
    respond_to do |format|
      format.html { redirect_to teste_mongos_url, notice: "Teste mongo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teste_mongo
      @teste_mongo = TesteMongo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teste_mongo_params
      params.require(:teste_mongo).permit(:User, :Email)
    end
end

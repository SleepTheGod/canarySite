class MicrocommandsController < ApplicationController
  before_action :set_microcommand, only: [:show, :edit, :update, :destroy]

  # GET /microcommands
  # GET /microcommands.json
  def index
    @microcommands = Microcommand.all
  end

  # GET /microcommands/1
  # GET /microcommands/1.json
  def show
  end

  # GET /microcommands/new
  def new
    @microcommand = Microcommand.new
  end

  # GET /microcommands/1/edit
  def edit
  end

  # POST /microcommands
  # POST /microcommands.json
  def create
    @microcommand = Microcommand.new(microcommand_params)

    respond_to do |format|
      if @microcommand.save
        format.html { redirect_to @microcommand, notice: 'Microcommand was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microcommand }
      else
        format.html { render action: 'new' }
        format.json { render json: @microcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microcommands/1
  # PATCH/PUT /microcommands/1.json
  def update
    respond_to do |format|
      if @microcommand.update(microcommand_params)
        format.html { redirect_to @microcommand, notice: 'Microcommand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microcommands/1
  # DELETE /microcommands/1.json
  def destroy
    @microcommand.destroy
    respond_to do |format|
      format.html { redirect_to microcommands_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microcommand
      @microcommand = Microcommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microcommand_params
      params.require(:microcommand).permit(:command_txt, :user_id)
    end
end

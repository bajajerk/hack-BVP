class AcsController < ApplicationController
  before_action :set_ac, only: [:show, :update, :destroy]

  # GET /acs
  # GET /acs.json
  def index
    @acs = Ac.all

    render json: @acs
  end

  # GET /acs/1
  # GET /acs/1.json
  def show
    render json: @ac
  end

  # POST /acs
  # POST /acs.json
  def create
    @ac = Ac.new(ac_params)

    if @ac.save
      render json: @ac, status: :created, location: @ac
    else
      render json: @ac.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /acs/1
  # PATCH/PUT /acs/1.json
  def update
    if @ac.update(ac_params)
      head :no_content
    else
      render json: @ac.errors, status: :unprocessable_entity
    end
  end

  # DELETE /acs/1
  # DELETE /acs/1.json
  def destroy
    @ac.destroy

    head :no_content
  end

  private

    def set_ac
      @ac = Ac.find(params[:id])
    end

    def ac_params
      params.require(:ac).permit(:status)
    end
end

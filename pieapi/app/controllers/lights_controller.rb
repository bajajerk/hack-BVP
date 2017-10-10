class LightsController < ApplicationController
  before_action :set_light, only: [:show, :update, :destroy]

  # GET /lights
  # GET /lights.json
  def index
    @lights = Light.all

    render json: @lights
  end

  # GET /lights/1
  # GET /lights/1.json
  def show
    render json: @light
  end

  # POST /lights
  # POST /lights.json
  def create
    @light = Light.new(light_params)

    if @light.save
      render json: @light, status: :created, location: @light
    else
      render json: @light.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lights/1
  # PATCH/PUT /lights/1.json
  def update
    if @light.update(light_params)
      head :no_content
    else
      render json: @light.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lights/1
  # DELETE /lights/1.json
  def destroy
    @light.destroy

    head :no_content
  end

  private

    def set_light
      @light = Light.find(params[:id])
    end

    def light_params
      params.require(:light).permit(:status, :red, :green, :blue)
    end
end

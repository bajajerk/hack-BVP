class DoorsController < ApplicationController
  before_action :set_door, only: [:show, :update, :destroy]

  # GET /doors
  # GET /doors.json
  def index
    @doors = Door.all

    render json: @doors
  end

  # GET /doors/1
  # GET /doors/1.json
  def show
    render json: @door
  end

  # POST /doors
  # POST /doors.json
  def create
    @door = Door.new(door_params)

    if @door.save
      render json: @door, status: :created, location: @door
    else
      render json: @door.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doors/1
  # PATCH/PUT /doors/1.json
  def update
    if @door.update(door_params)
      head :no_content
    else
      render json: @door.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doors/1
  # DELETE /doors/1.json
  def destroy
    @door.destroy

    head :no_content
  end

  private

    def set_door
      @door = Door.find(params[:id])
    end

    def door_params
      params.require(:door).permit(:status)
    end
end

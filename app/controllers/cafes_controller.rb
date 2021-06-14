class CafesController < ApplicationController

  before_action :set_cafe, only: [:edit, :update, :destroy]

  def index
    @cafes = Cafe.all

  end


  def show
    @booking = Booking.new
    @cafe = Cafe.find(params[:id])
  end

  def new

    @cafe = Cafe.new

  end

  def create
    @cafe = Cafe.new(cafe_params)

    if @cafe.save
      redirect_to @cafe, notice: "Your Cafe has been created!"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @cafe.update(cafe_params)
      redirect_to @cafe, notice: "Your Cafe has been updated"
    else
    render :edit
    end


  end

  def destroy
  end

  private

  def set_cafe
    @cafe = Cafe.find(params[:id])
  end

  def cafe_params

    params.require(:cafe).permit(:name, :location, :photo)

  end

end

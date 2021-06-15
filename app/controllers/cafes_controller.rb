class CafesController < ApplicationController

  before_action :skip_pundit?
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]

  def index
    @cafes = policy_scope(Cafe)


    @markers = @cafes.geocoded.map do |cafe|
      {
      lat: cafe.latitude,
      lng: cafe.longitude,
      # info_window: render_to_string(partial: "info_window", locals: { icon: icon }), #optional
      # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS, ie the URL in cloudinary for instance') #optional
      }

  end

  end


  def show

    @tables = @cafe.tables
    @booking = Booking.new

    authorize @cafe
    authorize @tables

  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(cafe_params)
    @cafe.user = current_user

    if @cafe.save
      redirect_to @cafe, notice: "Your Cafe has been created!"
    else
      render :new
    end
  end

  def edit
    authorize @cafe
  end

  def update
    if @cafe.update(cafe_params)
      redirect_to @cafe, notice: "Your Cafe has been updated"
    else
    render :edit
    end


  end

  def destroy
    @cafe.destroy
    redirect_to cafes_path, notice: "Your Cafe was succesfully destroyed"
  end

  private

  def set_cafe
    @cafe = Cafe.find(params[:id])
  end

  def cafe_params

  params.require(:cafe).permit(:name, :location, :photo)

  end

end

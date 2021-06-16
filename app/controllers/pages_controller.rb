class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @bookings = current_user.bookings.map{|booking| {title: booking.booking_headline, start: booking.start_time.strftime("%Y-%m-%d"), end: booking.end_time.strftime("%Y-%m-%d")}}
    start_date = params.fetch(:start_date, Date.today).to_date
    @date_range = (start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

end

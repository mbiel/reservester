class ReservationsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_owner!, :except => [:index, :show]

  def create
    @restaurant = Restaurant.find params[:restaurant_id]
    @reservation = @restaurant.reservations.build params[:reservation]


    if @reservation.save
      redirect_to @restaurant, :notice => 'Reservation successful!'
    else
      render 'restaurant/show'
    end
  end

  def destroy
    @reservation.destroy

    redirect_to @reservation.restaurant
  end
end

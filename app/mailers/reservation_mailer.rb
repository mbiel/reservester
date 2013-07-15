class ReservationMailer < ActionMailer::Base
  default from: "reservations@reservester.com"
 
  def reservation_notification(reservation)
      debugger
      @reservation = reservation
      @owneremail = reservation.restaurant.owner.email
      mail(:to => @owneremail, :subject => "New reservation at #{reservation.restaurant.name}")
  end
end
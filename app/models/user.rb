class User < ActiveRecord::Base
  has_many :reviews, foreign_key: :guest_id, class_name: "Review"

  has_many :listings, foreign_key: :host_id, class_name: "Listing"

  has_many :reservations, through: :listings

  def trips
    Reservation.where(guest_id: self.id)
    # binding.pry
  end

end

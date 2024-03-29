class Listing < ActiveRecord::Base
  has_many :reservations
  has_many :guests, through: :reservations
  belongs_to :neighborhood
  belongs_to :host, class_name: "User"
  has_many :reviews, through: :reservations
end

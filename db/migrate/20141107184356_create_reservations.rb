class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.belongs_to :guest
      t.belongs_to :listing

      t.timestamps
    end
  end
end

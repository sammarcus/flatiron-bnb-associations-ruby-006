class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.belongs_to :guest
      t.belongs_to :reservation
      t.timestamps
    end
  end
end

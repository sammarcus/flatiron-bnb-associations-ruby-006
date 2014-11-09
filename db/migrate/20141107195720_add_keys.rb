class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "neighborhoods", "cities", name: "neighborhoods_city_id_fk"
  end
end

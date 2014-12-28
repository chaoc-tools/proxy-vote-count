class AddCampusToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :campus, :string
  end
end

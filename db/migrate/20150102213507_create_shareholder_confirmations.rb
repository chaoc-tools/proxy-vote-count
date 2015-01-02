class CreateShareholderConfirmations < ActiveRecord::Migration
  def change
    create_table :shareholder_confirmations do |t|
      t.string :sh_firstname
      t.string :sh_mi
      t.string :sh_last_name
      t.integer :sh_bldg
      t.string :notes

      t.timestamps
    end
  end
end

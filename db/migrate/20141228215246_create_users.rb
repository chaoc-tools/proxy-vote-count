class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :is_shareholder
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :nickname
      t.references :building, index: true

      t.timestamps
    end
  end
end

class ChangeShNoteToMemo < ActiveRecord::Migration
  def change
    change_column :shareholder_confirmations, :notes,  :text
  end
end

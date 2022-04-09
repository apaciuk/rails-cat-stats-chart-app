class AddUsersToCats < ActiveRecord::Migration[7.0]
  def change
    add_column :cats, :owner_id, :integer, default: 0, null: false
    add_foreign_key :cats, :users, column: :owner_id
    add_index :cats, :owner_id
  end
end

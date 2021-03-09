class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.float :amount
      t.float :real_value
      t.float :fee_value
      t.float :current_value
      t.integer :action
      t.timestamps
    end
  end
end

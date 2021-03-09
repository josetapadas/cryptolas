class AddWalletsToPosition < ActiveRecord::Migration[6.1]
  def up
    add_reference :positions, :wallet, index: true, foreign_key: true
  end

  def down
    remove_reference :positions, :wallet
  end  
end

class CreateWallets < ActiveRecord::Migration[6.1]
  def change
    create_table :wallets do |t|
      t.string :name
      t.string :address
      t.belongs_to :portfolio, index: true, foreign_key: true
      t.timestamps
    end
  end
end

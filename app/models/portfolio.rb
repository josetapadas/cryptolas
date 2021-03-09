class Portfolio < ApplicationRecord
  has_many :wallets
  has_many :positions, through: :wallets
end

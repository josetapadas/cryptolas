class Position < ApplicationRecord
  enum action: [:buy, :sell]

  belongs_to :wallet
end

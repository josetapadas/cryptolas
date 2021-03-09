# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

def create_positions
  positions = []
  
  7.times do
    coin_value = rand(0.1..1.0)
    money_value = rand(10.0..100.0)
    fee_value = rand(0.01..1.00)
    positions << Position.new(amount: coin_value, real_value: money_value, fee_value: fee_value, current_value: money_value, action: rand(0..1))
  end

  positions
end

def create_wallets
  wallets = []
  
  3.times do
    wallets << Wallet.new(name: Faker::IndustrySegments.industry, address: Faker::Crypto.sha1, positions: create_positions)
  end

  wallets
end

2.times do 
  Portfolio.create(name: Faker::Bank.name, wallets: create_wallets)
end


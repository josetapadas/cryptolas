class WalletsController < ApplicationController
  def index
    @wallets = Wallet.where(portfolio_id: params[:portfolio_id])
  end

  def show
    @current_wallet = Wallet.find(params[:id])
    @positions = @current_wallet.positions
  end
end
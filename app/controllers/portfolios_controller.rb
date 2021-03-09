class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def show
    @current_portfolio = Portfolio.find(params[:id])
    @wallets = @current_portfolio.wallets
    @positions = @current_portfolio.positions
  end
end

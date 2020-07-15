class BanksController < ApplicationController
  def index
    @banks = Bank.all

    render json: BanksSerializer.new(@banks).to_serialized_json
  end

  def show
    @bank = Bank.find(params[:id])

    render json: BanksSerializer.new(@bank).to_serialized_json
  end
end

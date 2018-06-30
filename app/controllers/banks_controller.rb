class BanksController < ApplicationController
    before_action :set_bank, only: [:show, :update, :destroy]
  
    # GET /banks
    def index
      @banks = Bank.all
      json_response(@banks)
    end
  
    # POST /banks
    def create
      @bank = Bank.create!(bank_params)
      json_response(@bank)
    end
  
    # GET /banks/:id
    def show
      json_response(@bank)
    end
  
    # PUT /banks/:id
    def update
      @bank.update(bank_params)
      head :no_content
    end
  
    # DELETE /banks/:id
    def destroy
      @bank.destroy
      head :no_content
    end
  
    private
  
    def bank_params
      # whitelist params
      params.permit(:id, :code, :description)
    end
  
    def set_bank
      @bank = Bank.find(params[:id])
    end
end
  
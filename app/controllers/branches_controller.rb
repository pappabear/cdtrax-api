class BranchesController < ApplicationController
    before_action :set_branch, only: [:show, :update, :destroy]
  
    # GET /branches
    def index
      @branches = Branch.all.order('bank_id')
      json_response(@branches)
    end
  
    # POST /branches
    def create
      @branch = Branch.create!(branch_params)
      json_response(@branch)
    end
  
    # GET /branches/:id
    def show
      json_response(@branch)
    end
  
    # PUT /branches/:id
    def update
      @branch.update(branch_params)
      head :no_content
    end
  
    # DELETE /branches/:id
    def destroy
      @branch.destroy
      head :no_content
    end
  
    private
  
    def branch_params
      # whitelist params
      params.permit(:code, :description, :bank_id)
    end
  
    def set_branch
      @branch = Branch.find(params[:id])
    end
end
  
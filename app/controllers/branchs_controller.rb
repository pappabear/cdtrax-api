class BranchsController < ApplicationController
    before_action :set_branch, only: [:show, :update, :destroy]
  
    # GET /branchs
    def index
      @branchs = Branch.all
      json_response(@branchs)
    end
  
    # POST /branchs
    def create
      @branch = Branch.create!(branch_params)
      json_response(@branch)
    end
  
    # GET /branchs/:id
    def show
      json_response(@branch)
    end
  
    # PUT /branchs/:id
    def update
      @branch.update(branch_params)
      head :no_content
    end
  
    # DELETE /branchs/:id
    def destroy
      @branch.destroy
      head :no_content
    end
  
    private
  
    def branch_params
      # whitelist params
      params.permit(:code, :description)
    end
  
    def set_branch
      @branch = Branch.find(params[:id])
    end
end
  
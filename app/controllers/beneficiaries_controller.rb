class BeneficiariesController < ApplicationController

    def index
        @beneficiaries = Beneficiary.all
    end
    
    def show
        @beneficiary = Beneficiary.find(params[:id])
    end
    
    def new
        @beneficiary = Beneficiary.new
    end
    
    def create
        @beneficiary = Beneficiary.new(beneficiary_params)
        if @beneficiary.save
          redirect_to @beneficiary
        else
          render :new
        end
    end
    
    def edit
        @beneficiary = Beneficiary.find(params[:id])
    end

    def update
        @beneficiary = Beneficiary.find(params[:id])
        if @beneficiary.update(beneficiary_params)
          redirect_to @beneficiary
        else
          render :edit
        end
    end
    
    def destroy
        @beneficiary = Beneficiary.find(params[:id])
        @beneficiary.destroy
        redirect_to beneficiaries_path
    end
    
    private
    
    def beneficiary_params
        params.require(:beneficiary).permit(:charity_id, :need, :phone_number)
    end
end
class DonorsController < ApplicationController
    protect_from_forgery with: :null_session
  
    def index
      render json: Donor.all, status: :ok
    end
  
    def show
      donor = Donor.find_by(id: params[:id])
      if donor
        render json: donor, status: :ok
      else
        render json: { error: "Donor not found" }, status: :not_found
      end
    end
  
    def signup
      donor = Donor.new(donor_params)
  
      if donor.save
        token = encode_token(donor.id, donor.email, 'donor')
        render json: { donor: donor, token: token }, status: :created
      else
        render json: { errors: donor.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      donor = Donor.find_by(id: params[:id])
      if donor
        donor.update(donor_params)
        render json: donor, status: :accepted
      else
        render json: { error: "Donor not found" }, status: :not_found
      end
    end
  
    def destroy
      donor = Donor.find_by(id: params[:id])
      if donor
        donor.destroy
        head :no_content
      else
        render json: { error: 'Donor not found' }, status: :not_found
      end
    end
  
    def login
      donor = Donor.find_by(email: donor_params[:email])
      if donor && donor.authenticate(donor_params[:password])
        token = encode_token(donor.id, donor.email, 'donor')
        render json: { donor: donor, token: token }, status: :ok
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    def logout
      remove_user
      render json: { message: 'Logout successful' }
    end
  
    private
  
    def donor_params
      params.require(:donor).permit(:name, :email, :phone_number, :password)
    end
  end
class SessionsController < ApplicationController
    def new
      # render login form
    end
  
    def create
      email = params[:username]
      password = params[:password]
      
      user_type = detect_user_type(email)
      if user_type.nil?
        render json: { message: 'Invalid email' }, status: :unauthorized
        return
      end # You'll need to implement this method based on your logic
      user_class = user_type.capitalize.constantize
      user = user_class.find_by(email: email)
  
      if user && user.authenticate(password)
        token = encode_token(user.id, email, user_type)
        save_user(user.id, user_type)
        render json: { message: 'Successfully logged in!', token: token }
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
    
    private
    
    def detect_user_type(email)
        user = User.find_by(email: email) # Assuming User is a common base class for Admin, Charity, Donor
        user ? user.user_type : nil
      end
      
  end
  
class UsersController < ApplicationController

    def index
    end
            
    def new
        redirect_to "http://localhost:3000/users/sign_up"
    end
    
    def create
    end
    
    def edit
    end
    
    def show
    end
            
    def update
    end
    
    def destroy
    end



private

  def user_params
    params.require(:user).permit(:kanji_name)
  end

end

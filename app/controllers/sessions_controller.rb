class SessionsController < ApplicationController

def new
end

def create
 #indentify the user
 user = User.find_by_email(params[:sessions][:email].downcase)
 #if the user exists = find_by_email method returned a value, now check if the passwd match
 if user && user.authenticate(params[:sessions][:password])
   sign_in user
   redirect_to root_path
 elsif (!user)
    flash[:notice] = "An account associated with this email address doesn't exist"
    render 'new'
 else
   #if passwd doesn't match
   flash[:notice] = "You entered the wrong password"
   render 'new'
 end
end

def destroy
sign_out
redirect_to root_path
end

end

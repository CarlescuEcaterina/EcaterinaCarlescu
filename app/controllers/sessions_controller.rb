class SessionsController < ApplicationController

def new
end

def create

@user = User.find_by_email(params[:sessions][:email].downcase)
@cv = @user.cv

 if @user && @user.authenticate(params[:sessions][:password])
   sign_in @user
   redirect_to root_path
 elsif (!@user)
   flash[:notice] = "An account associated with this email address doesn't exist"
   render 'new'
  else
    flash[:notice] = "Wrong password"
    render 'new'
 end
end

def destroy
  sign_out
  redirect_to root_path
end

end

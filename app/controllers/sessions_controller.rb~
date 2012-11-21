class SessionsController < ApplicationController

def new
end

def create
  # identify the user
  user = User.find_by_email(params[:sessions][:email].downcase)
 
  #if the user exists = find_by_email method returned a value

  if user && user.authenticate(params[:sessions][:password])
  sign_in user

  redirect_to root_path
  elsif (!user)
flash[:notice]="An account associated with this email address does not exist"
  render 'new'

else
 flash[:notice]="You entered the wrong password"
 render 'new'
end

end

def destroy
end

end

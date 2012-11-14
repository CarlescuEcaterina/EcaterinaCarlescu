def create
  @user = User.new(params[:user])

   if @user.save
    sign_in @user
    flash[:success] = "You're account was successfully created."
 else 
  render action:"new"
end
end

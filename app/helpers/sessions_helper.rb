module SessionsHelper
def sign_in(user)
<<<<<<< HEAD
  cookies.permanent[:token] = user.token
  self.current_user = user
=======
 cookies.permanent[:token] = user.token
 self.current_user = user
>>>>>>> 359e36de9458b69d001a13146aade3a3339725c9
end

def current_user=(user)
@current_user = user
end

def current_user
@current_user ||=User.find_by_token(cookies[:token])
end

def signed_in?
 !current_user.nil?
end

def sign_out
 current_user = nil
 cookies.delete(:token)
end

end

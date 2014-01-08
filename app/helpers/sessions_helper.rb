module SessionsHelper

	def sign_in(user)
    #Todo check
    #http://stackoverflow.com/questions/9828393/chapter-9-authorization-test-fails
    #session[:remember_token] = user.remember_token		
		cookies.permanent[:remember_token] = user.remember_token
	  self.current_user = user
    #Todo
    #http://stackoverflow.com/questions/6821692/cookies-do-not-persist-in-rspec-on-rails-3-1
    #@current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def current_user?(user)
    #Todo debug
    # puts "user = #{user.email}"
    # puts "current_user = #{current_user.email}"
    # puts "evaluates to: #{user == current_user}"
    user == current_user
  end

  def sign_out
  	#self.current_user = nil
  	cookies.delete(:remember_token)
    self.current_user = nil
    #Todo remove
    #http://stackoverflow.com/questions/6821692/cookies-do-not-persist-in-rspec-on-rails-3-1
    #@current_user = nil
  end

end
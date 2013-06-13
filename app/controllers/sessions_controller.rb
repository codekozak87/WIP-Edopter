class SessionsController < ApplicationController

	def new
		
	end


	def create_Users_Session
		u = User.find_by_username
		if u.present? && u.password == params[:password]
      	session[:user_id] = u.id
      	redirect_to users, notice: "Signed in successfully."


     else
       redirect_to new_session_url, notice: "Nice try."
	end

end

	def create_Startup_Session
		s = Startup.find_by_company_name
		if s.present? && s.password == params[:password]
      	session[:company_id] = s.id 
      	redirect_to company_url, notice: "Signed in successfully."

     	else
       	redirect_to new_session_url, notice: "Nice try."
		end

	end

	def destroy
    reset_session
    redirect_to home_url, notice: "Signed out successfully."
  	end

 end
class PagesController < ApplicationController
   def home
   		if logged_in? and current_user.tipo == 'Enfermera'
   				redirect_to new_interaction_path
		end   	

   		if !logged_in?
				redirect_to login_path
		end
   end 
end
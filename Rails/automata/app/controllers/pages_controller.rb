class PagesController < ApplicationController
   def home
   		if logged_in? 
   			if current_user.tipo == 'Enfermera'
   				redirect_to new_interaction_path
   			elsif current_user.tipo == 'Administrador'
   				redirect_to users_path
   			end 
   				
	
		end   	

   		if !logged_in?
				redirect_to login_path
		end
   end 
end
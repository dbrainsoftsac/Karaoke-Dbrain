class WelcomeController < ApplicationController
	layout :dynamic_layout

   def index
    
   end

	protected
		def dynamic_layout

		if current_user.nil?
		"_autentication"   # Layout normal
		elsif current_user.admin?
		"_application_adm"        #Layout Adm
		else
		"_autentication"   # Layout normal
		end
	end   
   
 end

 
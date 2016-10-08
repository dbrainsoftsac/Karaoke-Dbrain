class InicioController < ApplicationController
  def new
  end

  def create
  end 

layout :dynamic_layout

protected
	def dynamic_layout

	if current_user.nil?
	"_inicio"   # Layout normal
	elsif current_user.admin?
	"_application_adm"        #Layout Adm
	else
	"_autentication"   # Layout normal
	end
end   
 
end

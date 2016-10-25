class SessionsController < ApplicationController
  def new
  end

  def create
	 	@user = User.find_by(rut: params[:session][:rut].downcase)
		  	#valido al usario
			if @user
			   redirect_to @user
			else
				#flash[:danger] = 'Invalid email/password combination' //queda pegado el mensaje
				flash.now[:danger] = 'Combinacion email/password incorrecto' # .now arregla el problema de pegado
				render 'new'
			end

  end

  def destroy
  end
end

class UsersController < ApplicationController
	
	def index
		if params[:search]
			@alumnos=User.find_by(rut: params[:search])

			if(@alumnos==nil)
				flash.now[:danger] = "Tu Rut no aparece en nuestros reguistros"
			else
				if(@alumnos.activated)
					flash[:success] = "Tu cuenta ya a sido activada, ingresa con tu rut y pass"
					redirect_to login_path
				else
					@alumnos.activar
					flash[:success] = "Tu cuenta a sido activada, configura tu cuenta"
					redirect_to edit_user_path(@alumnos)
				end
			end

		else
			@alumnos=User.all
		end

	end


	def new
	@user=User.new
	end
	
	def sesion
	end
	
	def activar
		@user=User.find_by(rut: params[:rut])
		@dato=params[:rut]
	end

	def buscar
		
	end
	
	def show
		@user = User.find(params[:id])	
	end

	def edit
		@user = User.find(params[:id])	
	end

	def update
@user = User.find(params[:id])
if @user.update_attributes(user_params)
flash[:success] = "Cuenta actualizada"
redirect_to root_path
else
render 'edit'
end
end


private
	
	def user_params
		params.require(:user).permit(	:name, :email, :password,:rut,
										:password_confirmation)
	end


end

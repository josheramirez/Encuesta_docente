class ProfesorsController < ApplicationController

def show
	@profe=Profesor.find(params[:id])
end

end


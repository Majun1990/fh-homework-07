class FactorialsController < ApplicationController
    def index
        
    end

    def new
        @factorial = Factorial.new
    end

    def create
        @factorial = Factorial.create(factorial_params)
        if @factorial.valid?
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @factorial = Factorial.find(params[:id])
    end

    private
    def factorial_params
       params.require(:factorial).permit(:number)         
    end
end

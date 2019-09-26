class FactorialsController < ApplicationController

    def index
        @factor = Factor.new
    end

    def new
        @factor = Factor.new
    end

    def create
        @factor = Factor.create(factor_params)
        if @factor.valid?
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @factor = Factor.find(params[:id])
    end

    private
    def factor_params
       params.require(:factor).permit(:input, :result)         
    end
end

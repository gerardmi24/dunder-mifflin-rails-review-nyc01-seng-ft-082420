class EmployeesController < ApplicationController

    before_action :set_employee, only: [:show, :edit, :update]

    def index
        @employees = Employee.all
    end 
    
    def show
        
    end

    def new
        @employee = Employee.all
    end 

    def edit

    end
    
    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office)
    end
end
class EmployeesController < ApplicationController

    before_action :find_employee, only: :show

    def index
        @employees = Employee.all
    end 
    
    def show
        
    end

    def new
        @employee = Employee.all
    end 
    
    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
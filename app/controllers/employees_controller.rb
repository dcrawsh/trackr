class EmployeesController < ApplicationController
  def index
    @employees = Employee.all 
  end
  
  def show
    # @location = Location.find(params[:id]);
    # @location.employess.find
    @employee = Employee.find(params[:id])
  end
  
  def new
    @employee = Employee.new
  end

  def edit 
    @location = Location.find(params[:location_id])
    @employee = Employee.find(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @employee = @location.employees.create(employee_params)
    redirect_to location_path(@location)

    # if @employee.save
    #   redirect_to @employee
    # else  
    #   render 'new'
    # end
  end

  # def update
  #   @employee = Employee.find(params[:id])
    
  #   if @employee.update(employee_params)
  #     redirect_to @employee
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @employee = Employee.find(params[:id])
  #   @employee.destroy
  #   redirect_to employees_path
  # end


  private 

  def employee_params
    params.require(:employee).permit(:employee_number, :first_name, :last_name)
  end
end

class EmployeesController < ApplicationController
  def index
      
      if params[:location_id]
        @location = Location.find(params[:location_id])
        @employees = Location.find(params[:location_id]).employees
      else
      @employees = Employee.all 
      
      
      end
    end
  
  
  def show
    @location = Location.find(params[:location_id])
    @employee = Employee.find(params[:id])
    @employee_trainings = @employee.employee_trainings
  end
  
  def new
    @location = Location.find(params[:location_id])
    @employee = Employee.new
  end

  def edit 
    @location = Location.find(params[:location_id])
    @employee = Employee.find(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @employee = @location.employees.create(employee_params)
    redirect_to location_employees_path(@location)

    # if @employee.save
    #   redirect_to @employee
    # else  
    #   render 'new'
    # end
  end

  def update
    @employee = Employee.find(params[:id])
    @location = Location.find(params[:location_id])
    
    if @employee.update(employee_params)
      redirect_to location_employee_path(@location, @employee)
    else
      render 'edit'
    end
  end

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

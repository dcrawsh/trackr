class EmployeeTrainingsController < ApplicationController
  def index  
    @location = Location.find(params[:location_id])
    @employee_trainings = @location.employee_trainings
  end

  def new  
    @location = Location.find(params[:location_id])
    @employees = @location.employees
    @trainings = @location.trainings
    @employee_training = EmployeeTraining.new
  end


  def edit 
      
   @employee_training = EmployeeTraining.find(params[:id])
   @location = @employee_training.location 
   @trainings = @location.trainings
  end

  def create
    @location = Location.find(params[:location_id])
    @employee_training = @location.employee_trainings.create(employee_trainings_params)
    redirect_to location_employee_trainings_path(@location)
  end

  def update
    
    @employee_training = EmployeeTraining.find(params[:id])
    @location = @employee_training.location
    @employee = @employee_training.employee
    if @employee_training.update(employee_trainings_params)
      redirect_to location_employee_path(@location, @employee)
    else
      render 'edit'
    end
  end

  private 

  def employee_trainings_params
    params.require(:employee_training).permit(:employee_id, :training_id, :occurence, :location_id)
  end

  end



  


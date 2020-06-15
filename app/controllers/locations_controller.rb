class LocationsController < ApplicationController
  
  def index
    @locations = Location.all 
  end
  
  def show
  @location = Location.find(params[:id])

  if params[:search] === "first"
    @employees = @location.employees.where("first_name LIKE ?", "%#{params[:query]}%")
  elsif params[:search] === "last"
    @employees = @location.employees.where("last_name LIKE ?", "%#{params[:query]}%")
  elsif params[:search] === "trainingname"
    @trainings = @location.trainings.where("name LIKE ?", "%#{params[:query]}%")
  end
    
   
  
  
end
  
  def new
    @location = Location.new
  end

  def edit 
    @location = Location.find(params[:id]);
  end

  def create
    @location = Location.new(params[:id])

    if @location.save
      redirect_to @location
    else  
      render 'new'
    end
  end

  def update
    @location = Location.find(params[:id])
    
    if @location.update(location_params)
      redirect_to @location
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end


  private 

  def location_params
    params.require(:location).permit(:title, :number)
  end
end

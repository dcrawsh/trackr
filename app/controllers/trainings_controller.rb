class TrainingsController < ApplicationController
    
        def index
            
            if params[:location_id]
              @location = Location.find(params[:location_id])
              @trainings = Location.find(params[:location_id]).trainings
            else
            @trainings = Trainings.all 
            
            
            end
        end
        
        
        def show
          @location = Location.find(params[:location_id])
          @training = Training.find(params[:id])
        end
        
        def new
          @location = Location.find(params[:location_id])
          @training = Training.new
        end
      
        def edit 
          @location = Location.find(params[:location_id])
          @training = Training.find(params[:id])
        end
      
        def create
          @location = Location.find(params[:location_id])
          @training = @location.trainings.create(training_params)
          redirect_to location_trainings_path(@location)
      
          # if @training.save
          #   redirect_to @training
          # else  
          #   render 'new'
          # end
        end
      
        def update
          @training = Training.find(params[:id])
          @location = Location.find(params[:location_id])
          
          if @training.update(training_params)
            redirect_to location_training_path(@location, @training)
          else
            render 'edit'
          end
        end
      
        # def destroy
        #   @training = Training.find(params[:id])
        #   @training.destroy
        #   redirect_to employees_path
        # end
      
      
        private 
      
        def training_params
          params.require(:training).permit(:name)
        end
end

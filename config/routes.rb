Rails.application.routes.draw do
  
  get 'employee_trainings/new'
  
  resources :locations do 
    resources :employees
  end
  
  resources :locations do 
    resources :trainings
  end
  
  resources :locations do 
    resources :employee_trainings
  end


  resources :employee_trainings

  resources :employees

  resources :trainings

  root 'welcome#index'
end

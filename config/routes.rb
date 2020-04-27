Rails.application.routes.draw do
  
  resources :locations do 
    resources :employees 
  end

  root 'welcome#index'
end

Rails.application.routes.draw do
  get 'home/index'
  get 'exams/index'
  get 'teachers/index'
  get 'students/index'
  
  get '/teachers/:id/dashboard', to: "teachers#show", as: :teacher_dashboard 

  devise_for :students

  devise_for :teachers, :controllers => { registrations: 'teachers/registrations' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :teachers do
    resources :exams do
      resources :questions
    end
  end
  # Defines the root path route ("/")
  root "home#home"
end

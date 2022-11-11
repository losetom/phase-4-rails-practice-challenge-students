Rails.application.routes.draw do
  resources :instructors
  resources :students

  get '/instrcutors', to instructors

end

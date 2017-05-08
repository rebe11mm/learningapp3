Rails.application.routes.draw do
   devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registrations => "user_registrations" }, :skip => [:registrations]  
                                            
as :user do
  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
  put 'users' => 'devise/registrations#update', :as => 'user_registration'            
end
  resources :users
  resources :products do
  resources :comments
  end

  
  resources :orders, only: [:index, :show, :create, :destroy]

 

  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/index'
  get 'static_pages/landing_page'
  post 'static_pages/thank_you'
  root 'static_pages#landing_page'

 	

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

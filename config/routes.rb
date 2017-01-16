Rails.application.routes.draw do
 root to: "pages#home"
 
 get 'about', to: 'pages#about'
 resources :contacts, only: :create # si se quiere usar 2 only: [:new, :create]
 get 'contact-us', to: 'contacts#new', as: 'new_contact' #para que siga funcionando el path
end

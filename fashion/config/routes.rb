Rails.application.routes.draw do
  resources :items
  resources :fav_items
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#The code between these two comments is correct! Make a note of it!
resources :pages

#get 'home' => 'pages#home'
get 'home' => 'items#home'

#1:33pm 8/5/21: Find the correct bloody action to put here!!!!!!!!!

#root 'pages#home'
#The code between these two comments is correct! Make a note of it!

#root :to => "pages#home"
root :to => "items#home"




#get 'home' => 'pages#home'
#root 'home' => 'pages#home'


#root 'pages#home'

#get 'home', to:'pages#home'

#root :to => "pages#home"

#root :to => "pages#home"

end

Rails.application.routes.draw do
  
  resources :artists, except: :destroy

  resources :genres, except: :destory

  resources :songs, except: :destroy

end

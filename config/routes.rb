Rails.application.routes.draw do
  resources :playlist_songs
  namespace :api do
    namespace :v1 do
      resources :playlists, only: [:index ] do
        resources :songs, only: [:index, :create]
      end
      resources :albums, only: [:index, :show] do
        resources :songs, only: [:index]
      end
      resources :artists, only: [:index, :show] do
        resources :albums, only: [:index]
      end
      resources :songs, only: [:index, :show]
      resources :users, only: [:index, :show, :create] do
        resources :playlists, only: [:index, :create]
      end
    end
  end
end

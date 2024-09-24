# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  resources :ebooks do
    collection do
      get "import"
      post "import_csv"
    end
  end
  root "home#index"

  mount Sidekiq::Web => "/sidekiq"
end

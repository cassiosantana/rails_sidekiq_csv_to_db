# frozen_string_literal: true

Rails.application.routes.draw do
  resources :ebooks do
    collection do
      get "import"
      post "import_csv"
    end
  end
  root "home#index"
end

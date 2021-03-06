# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products do
    collection { post :import }
  end
  root to: 'products#index'
end

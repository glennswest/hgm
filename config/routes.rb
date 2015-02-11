Example::Application.routes.draw do
  resources :host_groups
  resources :hosts
  resources :tags

  root 'host_groups#index'

  # API+API Documentation
  mount API::Base => '/api'
  mount GrapeSwaggerRails::Engine => '/apidoc'
end

Rails.application.routes.draw do
  # mount Twitter::Bootstrap::Components::Rails::Engine => "/twitter-bootstrap-components-rails"
  namespace :v3 do
    get '/', to: 'overview#index'
  end

  namespace :v4 do
    get '/', to: 'overview#index'
  end
  root to: 'v4/overview#index'
end

Rails.application.routes.draw do
  # mount Twitter::Bootstrap::Components::Rails::Engine => "/twitter-bootstrap-components-rails"
  root to: 'overview#index'
end

Rails.application.routes.draw do
  mount Twitter::Bootstrap::Components::Rails::Engine => "/twitter-bootstrap-components-rails"
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper Twitter::Bootstrap::Components::Rails::ApplicationHelper
end

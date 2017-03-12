module Twitter
  module Bootstrap
    module Components
      module Rails
        class Engine < ::Rails::Engine
          isolate_namespace Twitter::Bootstrap::Components::Rails
        end
      end
    end
  end
end

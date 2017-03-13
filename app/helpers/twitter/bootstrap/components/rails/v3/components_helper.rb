module Twitter
  module Bootstrap
    module Components
      module Rails
        module V3
          module ComponentsHelper
            def bootstrap_alert(options, &block)
              Twitter::Bootstrap::Components::V3::Alert.new(self, options, &block).perform
            end

            def bootstrap_badge(options = {}, &block)
              Twitter::Bootstrap::Components::V3::Badge.new(self, options, &block).perform
            end
          end
        end
      end
    end
  end
end
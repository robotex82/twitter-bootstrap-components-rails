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

            def bootstrap_button(options = {}, &block)
              Twitter::Bootstrap::Components::V3::Button.new(self, options, &block).perform
            end

            def bootstrap_button_group(options = {}, &block)
              Twitter::Bootstrap::Components::V3::ButtonGroup.new(self, options, &block).perform
            end

            def bootstrap_responsive_media_object(options = {}, &block)
              Twitter::Bootstrap::Components::V3::ResponsiveMediaObject.new(self, options, &block).perform
            end

            def bootstrap_media_object(options = {}, &block)
              Twitter::Bootstrap::Components::V3::MediaObject.new(self, options, &block).perform
            end

            def bootstrap_thumbnail(options = {}, &block)
              Twitter::Bootstrap::Components::V3::Thumbnail.new(self, options, &block).perform
            end
          end
        end
      end
    end
  end
end
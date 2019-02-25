module Twitter
  module Bootstrap
    module Components
      module Rails
        module V3
          class ViewHelper < Rao::ViewHelper::Base
            def alert(options, &block)
              Twitter::Bootstrap::Components::V3::Alert.new(c, options, &block).perform
            end

            def badge(options = {}, &block)
              Twitter::Bootstrap::Components::V3::Badge.new(c, options, &block).perform
            end

            def button(options = {}, &block)
              Twitter::Bootstrap::Components::V3::Button.new(c, options, &block).perform
            end

            def button_group(options = {}, &block)
              Twitter::Bootstrap::Components::V3::ButtonGroup.new(c, options, &block).perform
            end

            def responsive_media_object(options = {}, &block)
              Twitter::Bootstrap::Components::V3::ResponsiveMediaObject.new(c, options, &block).perform
            end

            def media_object(options = {}, &block)
              Twitter::Bootstrap::Components::V3::MediaObject.new(c, options, &block).perform
            end

            def thumbnail(options = {}, &block)
              Twitter::Bootstrap::Components::V3::Thumbnail.new(c, options, &block).perform
            end

            def responsive_embed(options = {}, &block)
              Twitter::Bootstrap::Components::V3::ResponsiveEmbed.new(c, options, &block).perform
            end

            # add ons
            def form_for(object, *args, &block)
              simple_form_for(object, *args, &block)
            end

            def navbar_brand(options = {}, &block)
              Twitter::Bootstrap::Components::V3::NavbarBrand.new(c, options, &block).perform
            end
          end
        end
      end
    end
  end
end
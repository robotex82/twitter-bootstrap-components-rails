module Twitter
  module Bootstrap
    module Components
      module V3
        class ResponsiveMediaObject < Twitter::Bootstrap::Components::V3::MediaObject
          def div_media_object_classes
            ["responsive-media-#{horizontal_alignment}", "responsive-media-#{vertical_alignment}"]
          end
        end
      end
    end
  end
end
module Twitter
  module Bootstrap
    module Components
      module V3
        class ResponsiveMediaObject < Twitter::Bootstrap::Components::V3::MediaObject
          private

          def div_media_object_classes
            ["responsive-media-#{horizontal_alignment}", "responsive-media-#{vertical_alignment}"]
          end

          def view_locals
            super.merge(media_columns: media_columns)
          end

          def media_columns
            @options[:media_columns] || 2
          end

          def div_container_classes
            ['responsive-media', 'col-lg-12', additional_div_container_classes]
          end
        end
      end
    end
  end
end
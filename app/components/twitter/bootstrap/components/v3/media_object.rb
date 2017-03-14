module Twitter
  module Bootstrap
    module Components
      module V3
        class MediaObject < Base
          DEFAULT_IMAGE_SRC = "https://placeholdit.imgix.net/~text?txtsize=16&txt=64x64&w=64&h=64".freeze

          private

          def view_locals
            { 
              block_output:             @block_output,
              context:                  context,
              div_media_object_classes: div_media_object_classes,
              image_options:            image_options,
              link_target:              link_target,
              horizontal_alignment:     horizontal_alignment
            }
          end

          def div_media_object_classes
            ["media-#{horizontal_alignment}", "media-#{vertical_alignment}"]
          end

          def context
            @options[:context]
          end

          def horizontal_alignment
            @horizontal_alignment = @options[:horizontal_alignment] || :left
            unless [:left, :right].include?(@horizontal_alignment)
              raise "horizontal_alignment must be either :left or :right, but #{@horizontal_alignment} was given."
            end
            @horizontal_alignment
          end

          def vertical_alignment
            @vertical_alignment = @options[:vertical_alignment] || :top
            unless [:top, :middle, :bottom].include?(@vertical_alignment)
              raise "vertical_alignment must be either :top, :middle or :bottom, but #{@vertical_alignment} was given."
            end
            @vertical_alignment
          end

          def image_options
            @image_options ||= (@options[:image_options] || {}).reverse_merge!(alt: nil, src: DEFAULT_IMAGE_SRC)
          end

          def link_target
            @options[:link_target]
          end
        end
      end
    end
  end
end
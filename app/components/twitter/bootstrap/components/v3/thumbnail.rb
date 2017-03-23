module Twitter
  module Bootstrap
    module Components
      module V3
        class Thumbnail < Base
          DEFAULT_IMAGE_SRC = "https://placeholdit.imgix.net/~text?txtsize=16&txt=242x200&w=242&h=200".freeze
          DEFAULT_CONTAINER_CLASSES = "col-xs-6 col-md-3".freeze

          private

          def view_locals
            { 
              block_output:      @block_output,
              context:           context,
              container_classes: container_classes,
              image_options:     image_options,
              link_options:      link_options
            }
          end

          def context
            @options[:context]
          end

          def container_classes
             @options[:container_classes] || DEFAULT_CONTAINER_CLASSES
          end

          def image_options
            (@options[:image_options] || {}).reverse_merge!(alt: nil, src: DEFAULT_IMAGE_SRC)
          end

          def link_options
            @options[:link_options] || {}
          end
        end
      end
    end
  end
end
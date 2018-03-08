module Twitter
  module Bootstrap
    module Components
      module V4
        class CarouselItem < Base
          private

          def view_locals
            { 
              block_output: @block_output,
              caption:      caption,
              image_source: image_source,
              active:       active
            }
          end

          def active
            @options[:active]
          end

          def caption
            @options[:caption]
          end

          def image_source
            @options[:image_source]
          end
        end
      end
    end
  end
end
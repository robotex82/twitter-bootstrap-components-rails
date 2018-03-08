module Twitter
  module Bootstrap
    module Components
      module V4
        class Carousel < Base
          def add_item(options = {})
            @items << options
          end
          
          private

          def initialize(*args)
            super
            @options.reverse_merge!(option_defaults)
            @items = []
          end

          def view_locals
            { 
              block_output:     @block_output,
              carousel_id:      carousel_id,
              items:            @items,
              carousel_options: carousel_options,
              autostart:        @options[:autostart]
            }
          end

          def carousel_id
            @options[:id] || "carousel-#{SecureRandom.uuid}"
          end

          def carousel_options
            @carousel_options ||= %i(interval keyboard pause ride wrap).each_with_object({}) do |key, memo|
              memo["data-#{key}"] = @options[key].to_s
            end
          end
          
          def option_defaults
            {
              autostart: true,
              interval: 5000,
              keyboard: true,
              pause: 'hover',
              ride: 'false',
              wrap: true
            }
          end
        end
      end
    end
  end
end
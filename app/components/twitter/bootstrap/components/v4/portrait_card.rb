module Twitter
  module Bootstrap
    module Components
      module V4
        # Example:
        #
        #     .col-lg-4
        #       = bootstrap_portrait_card(image_options: { src: "data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" }) do
        #         %h2 Heading
        #         %p Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.
        #         %p
        #           %a.btn.btn-secondary{:href => "#", :role => "button"} View details »
        #
        class PortraitCard < Base
          attr_accessor :image_options

          def initialize(*args)
            super
            @options.reverse_merge(default_options)
            @image_options = (@options.delete(:image_options) || {}).reverse_merge(default_image_options)
          end

          private

          def default_options
            {}
          end

          def default_image_options
            { height: "140", width: "140"}
          end

          def view_locals
            {
              block_output:           block_output,
              image_options:          image_options
            }
          end
        end
      end
    end
  end
end

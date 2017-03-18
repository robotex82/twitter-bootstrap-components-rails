module Twitter
  module Bootstrap
    module Components
      module V4
        class Card::Footer < Base
          private

          def view_locals
            { 
              block_output:           block_output,
              additional_css_classes: additional_css_classes
            }
          end

          def additional_css_classes
            @options[:additional_css_classes]
          end
        end
      end
    end
  end
end
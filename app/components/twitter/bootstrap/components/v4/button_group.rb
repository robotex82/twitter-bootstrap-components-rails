module Twitter
  module Bootstrap
    module Components
      module V4
        class ButtonGroup < Base
          private

          def view_locals
            { 
              block_output:  @block_output,
              div_options:  div_options
            }
          end

          def div_css_classes
            [default_css_classes].compact.flatten
          end

          def default_css_classes
            ['btn-group']
          end

          def div_options
            { class: div_css_classes, role: 'group', :'aria-label' => "Button group" }
          end
        end
      end
    end
  end
end
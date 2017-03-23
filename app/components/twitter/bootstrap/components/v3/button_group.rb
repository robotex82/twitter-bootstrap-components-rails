module Twitter
  module Bootstrap
    module Components
      module V3
        class ButtonGroup < Base
          SIZE_MAP = {
            default:     nil,
            extra_small: :xs,
            small:       :sm,
            large:       :lg
          }.freeze

          private

          def view_locals
            { 
              block_output:    @block_output,
              div_css_classes: div_css_classes
            }
          end

          def div_css_classes
            [group_css_class, size_css_class, justified_css_class, drop_up_css_class].compact
          end

          def size
            @options[:size] || :default
          end

          def size_css_class
            SIZE_MAP[size]
          end

          def group_css_class
            @options[:vertical] ? 'btn-group-vertical' : 'btn-group'
          end

          def justified_css_class
            @options[:justified] ? 'btn-group-justified' : nil
          end

          def drop_up_css_class
            @options[:drop_up] ? 'dropup' : nil
          end
        end
      end
    end
  end
end
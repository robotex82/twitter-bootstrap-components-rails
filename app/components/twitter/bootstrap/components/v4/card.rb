module Twitter
  module Bootstrap
    module Components
      module V4
        class Card < Base
          private

          def view_locals
            { 
              block_output:           block_output,
              image_options:          image_options,
              additional_css_classes: additional_css_classes
            }
          end

          def image_options
            @options[:image_options]
          end

          def type
            @options[:type]
          end

          def partial
            [self.class.name.underscore, type].compact.join("_")
          end

          def additional_css_classes
            [@options[:additional_css_classes], text_algin_css_class, inverse_css_class, context_css_class].compact.join(" ")
          end

          def text_align
            @options[:text_align]
          end

          def text_algin_css_class
            case @options[:text]
            when :center
              'text-center'
            when :right
              'text-right'
            end
          end

          def inverse?
            !!@options[:inverse]
          end

          def inverse_css_class
            'card-inverse' if inverse?
          end

          def context
            @options[:context]
          end

          def context_css_class
            "card-#{context}" if context.present?
          end
        end
      end
    end
  end
end
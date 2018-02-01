module Twitter
  module Bootstrap
    module Components
      module V3
        class Button < Base
          SIZE_MAP = {
            default:     nil,
            extra_small: 'btn-xs',
            small:       'btn-sm',
            large:       'btn-lg'
          }.freeze

          private

          def view_locals
            {
              block_output:   block_output,
              input_options:  input_options,
              link_target:    link_target,
              link_options:   link_options,
              button_options: button_options,
              element_type:   element_type
            }
          end

          def link_target
            @options[:to]
          end

          # html element type (:link, :button or :input)
          def element_type
            @options[:element_type] ||
            link_target.present? ? :link : :button
          end

          def css_classes
            [*default_css_classes, size_css_class, additional_css_classes].compact
          end

          def default_css_classes
            ['btn', "btn-#{context}"]
          end

          def size
            @options[:size] || :default
          end

          def size_css_class
            SIZE_MAP[size]
          end

          def context
            @options[:context] || :primary
          end

          # input type (:button, :submit or :reset)
          def type
            @options[:type] || :button
          end

          def value
            @options[:value]
          end

          def additional_css_classes
            @options[:class]
          end

          def input_options
            { class: css_classes.join(" "), type: type, value: value }
          end

          def link_options
            link_options = { class: css_classes.join(" "), role: "button" }
            link_options[:data]   = @options[:data]   if @options[:data].present?
            link_options[:method] = @options[:method] if @options[:method].present?
            link_options
          end

          def button_options
            { class: css_classes.join(" "), type: "button" }
          end
        end
      end
    end
  end
end

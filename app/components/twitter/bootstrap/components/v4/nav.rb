module Twitter
  module Bootstrap
    module Components
      module V4
        class Nav < Base

          private

          def view_locals
            {
              block_output: @block_output,
              ul_classes: ul_classes
            }
          end

          def ul_classes
            default_ul_classes + additional_ul_classes
          end

          def default_ul_classes
            %w(nav)
          end

          def additional_ul_classes
            @options[:additional_ul_classes] || []
          end
        end
      end
    end
  end
end

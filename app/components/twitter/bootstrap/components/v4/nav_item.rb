module Twitter
  module Bootstrap
    module Components
      module V4
        class NavItem < Base

          private

          def view_locals
            {
              block_output: @block_output,
              li_classes: li_classes
            }
          end

          def li_classes
            default_li_classes + additional_li_classes
          end

          def default_li_classes
            %w(nav-item)
          end

          def additional_li_classes
            @options[:additional_li_classes] || []
          end
        end
      end
    end
  end
end

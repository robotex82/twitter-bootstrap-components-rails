module Twitter
  module Bootstrap
    module Components
      module V4
        class Alert < Base
          private

          def view_locals
            { 
              block_output:      @block_output,
              context:           context,
              dismissible:       dismissible?,
              div_alert_classes: div_alert_classes
            }
          end

          def dismissible?
            !!@options[:dismissible]
          end

          def div_alert_classes
            classes = ["alert", "alert-#{context}"]
            classes << ["alert-dismissible", *@options[:dismissible]] if @options[:dismissible].respond_to?(:join)
            classes << additional_css_classes
            classes
          end

          def context
            @options[:context]
          end

          def additional_css_classes
            @options[:class]
          end
        end
      end
    end
  end
end
module Twitter
  module Bootstrap
    module Components
      module V3
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
            classes << ["alert-dismissible"] if @options[:dismissible]
            classes
          end

          def context
            @options[:context]
          end
        end
      end
    end
  end
end
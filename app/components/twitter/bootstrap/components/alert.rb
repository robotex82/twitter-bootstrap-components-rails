module Twitter
  module Bootstrap
    module Components
      class Alert < Base
        private

        def view_locals
          { 
            block_output:      @block_output,
            context:           @options[:context],
            dismissible:       dismissible?,
            div_alert_classes: div_alert_classes
          }
        end

        def dismissible?
          !!@options[:dismissible]
        end

        def div_alert_classes
          classes = ["alert", "alert-#{@options[:context]}"]
          classes << ["alert-dismissible", *@options[:dismissible]] if @options[:dismissible].respond_to?(:join)
          classes
        end
      end
    end
  end
end

module Twitter
  module Bootstrap
    module Components
      class Badge < Base

        private

        def view_locals
          { 
            block_output:       @block_output,
            context:            context,
            span_badge_classes: span_badge_classes
          }
        end

        def pill?
          !!@options[:pill]
        end

        def span_badge_classes
          classes = ["badge", "badge-#{context}"]
          classes << 'badge-pill' if pill?
          classes
        end

        def context
          @options[:context]
        end
      end
    end
  end
end

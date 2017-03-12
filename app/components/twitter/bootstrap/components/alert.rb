module Twitter
  module Bootstrap
    module Components
      class Alert < Base
        private

        def view_locals
          { block_output: @block_output, context: @options[:context] }
        end
      end
    end
  end
end

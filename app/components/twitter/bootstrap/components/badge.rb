module Twitter
  module Bootstrap
    module Components
      class Badge < Base
        
        private

        def view_locals
          { 
            block_output: @block_output,
            context:      @options[:context]
          }
        end
      end
    end
  end
end

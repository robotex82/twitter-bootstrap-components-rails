module Twitter
  module Bootstrap
    module Components
      class Base
        def initialize(view, options = {}, &block)
          @view        = view
          @options     = options
          @block       = block
          @view_locals = {}
        end

        def perform
          @block_output = @view.capture { @block.call(self) }
          @view.render partial: self.class.name.underscore, locals: view_locals
        end

        private

        attr_reader :view_locals
      end
    end
  end
end

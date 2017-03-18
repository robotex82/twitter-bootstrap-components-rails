module Twitter
  module Bootstrap
    module Components
      module V4
        class Base
          def initialize(view, options = {}, &block)
            @view        = view
            @options     = options
            @block       = block
            @view_locals = {}
          end

          def perform
            @block_output = block_output
            @view.render partial: partial, locals: view_locals
          end

          private

          attr_reader :view_locals

          def block_output
            return unless @block.present?
            @view.capture { @block.call(self) }
          end

          def partial
            self.class.name.underscore
          end
        end
      end
    end
  end
end
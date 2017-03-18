module Twitter
  module Bootstrap
    module Components
      module V4
        class Card::Blockquote < Base
          private

          def view_locals
            { 
              block_output: block_output
            }
          end
        end
      end
    end
  end
end
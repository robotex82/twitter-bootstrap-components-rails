module Twitter
  module Bootstrap
    module Components
      module V4
        class Flash < Base
          def self.map_message_type_to_context(message_type)
            { success: "success", error: "danger", alert: "warning", notice: "info" }[message_type.to_sym] || message_type.to_s
          end

          private

          def view_locals
            {
              flash: mapped_flash
            }
          end

          private

          def mapped_flash
            @view.flash.each_with_object({}) do |(key, value), memo|
              memo[map_message_type_to_context(key)] = value
            end
          end

          def map_message_type_to_context(message_type)
            self.class.map_message_type_to_context(message_type)
          end
        end
      end
    end
  end
end
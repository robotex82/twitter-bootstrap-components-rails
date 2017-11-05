module Twitter
  module Bootstrap
    module Components
      module V3
        class ResponsiveEmbed < Base
          ALLOWED_ASPECT_RATIOS = [:'16by9', :'4by3']

          private

          def view_locals
            { 
              block_output:       @block_output,
              context:            context,
              source_url:         @options[:source_url],
              aspect_ratio:       aspect_ratio
            }
          end

          def context
            @options[:context]
          end

          def aspect_ratio
            @options[:aspect_ratio]
          end

          def aspect_ratio
            @aspect_ratio = @options[:aspect_ratio] || :'16by9'
            unless ALLOWED_ASPECT_RATIOS.include?(@aspect_ratio)
              raise "aspect_ratio must be one of (#{ALLOWED_ASPECT_RATIOS}). #{@aspect_ratio} was given."
            end
            @aspect_ratio
          end
        end
      end
    end
  end
end
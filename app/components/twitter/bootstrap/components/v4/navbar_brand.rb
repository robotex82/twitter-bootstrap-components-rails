module Twitter
  module Bootstrap
    module Components
      module V4
        class NavbarBrand < Base
          private

          def view_locals
            { 
              block_output:       @block_output,
              link_options:       link_options,
              default_brand_name: default_brand_name
            }
          end

          def link_options
            (@options[:link_options] || {}).reverse_merge!(href: default_link_target)
          end

          def default_brand_name
            ::Rails.application.class.name.deconstantize.titleize
          end

          def default_link_target
            @view.main_app.root_path
          end
        end
      end
    end
  end
end
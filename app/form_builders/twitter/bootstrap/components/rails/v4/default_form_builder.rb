module Twitter
  module Bootstrap
    module Components
      module Rails
        module V4
          class DefaultFormBuilder < SimpleForm::FormBuilder
            def input(attribute_name, options = {}, &block)
              super(attribute_name, options.merge(wrapper_html: { :class => 'form-group' }), &block)
            end
          end
        end
      end
    end
  end
end

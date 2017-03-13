module Twitter
  module Bootstrap
    module Components
      module Rails
        module V4
          module ComponentsHelper
            def bootstrap_alert(options, &block)
              Twitter::Bootstrap::Components::V4::Alert.new(self, options, &block).perform
            end

            def bootstrap_badge(options, &block)
              Twitter::Bootstrap::Components::V4::Badge.new(self, options, &block).perform
            end

            def bootstrap_breadcrumb(options)
              Twitter::Bootstrap::Components::V4::Breadcrumb.new(options).perform
            end

            def bootstrap_button(options)
              Twitter::Bootstrap::Components::V4::Button.new(options).perform
            end

            def bootstrap_button_group(options)
              Twitter::Bootstrap::Components::V4::ButtonGroup.new(options).perform
            end

            def bootstrap_card(options)
              Twitter::Bootstrap::Components::V4::Card.new(options).perform
            end

            def bootstrap_carousel(options)
              Twitter::Bootstrap::Components::V4::Carousel.new(options).perform
            end

            def bootstrap_collapse(options)
              Twitter::Bootstrap::Components::V4::Collapse.new(options).perform
            end

            def bootstrap_dropdown(options)
              Twitter::Bootstrap::Components::V4::Dropdown.new(options).perform
            end

            def bootstrap_form(options)
              Twitter::Bootstrap::Components::V4::Form.new(options).perform
            end

            def bootstrap_input_group(options)
              ITwitter::Bootstrap::Components::V4::InputGroup.new(options).perform
            end

            def bootstrap_jumbotron(options)
              Twitter::Bootstrap::Components::V4::Jumbotron.new(options).perform
            end

            def bootstrap_list_group(options)
              Twitter::Bootstrap::Components::V4::ListGroup.new(options).perform
            end

            def bootstrap_modal(options)
              Twitter::Bootstrap::Components::V4::Modal.new(options).perform
            end

            def bootstrap_nav(options)
              Twitter::Bootstrap::Components::V4::Nav.new(options).perform
            end

            def bootstrap_navbar(options)
              Twitter::Bootstrap::Components::V4::Navbar.new(options).perform
            end

            def bootstrap_pagination(options)
              Twitter::Bootstrap::Components::V4::Pagination.new(options).perform
            end

            def bootstrap_popover(options)
              Twitter::Bootstrap::Components::V4::Popover.new(options).perform
            end

            def bootstrap_progress(options)
              Twitter::Bootstrap::Components::V4::Progress.new(options).perform
            end

            def bootstrap_scrollspy(options)
              Twitter::Bootstrap::Components::V4::Scrollspy.new(options).perform
            end

            def bootstrap_tooltip(options)
              Twitter::Bootstrap::Components::V4::Tooltip.new(options).perform
            end
          end
        end
      end
    end
  end
end
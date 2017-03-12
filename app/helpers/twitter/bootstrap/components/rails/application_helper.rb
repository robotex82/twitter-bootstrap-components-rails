module Twitter
  module Bootstrap
    module Components
      module Rails
        module ApplicationHelper
          def bootstrap_alert(options, &block)
            Twitter::Bootstrap::Components::Alert.new(self, options, &block).perform
          end

          def bootstrap_badge(options, &block)
            Twitter::Bootstrap::Components::Badge.new(self, options, &block).perform
          end

          def bootstrap_breadcrumb(options)
            Twitter::Bootstrap::Components::Breadcrumb.new(options).perform
          end

          def bootstrap_button(options)
            Twitter::Bootstrap::Components::Button.new(options).perform
          end

          def bootstrap_button_group(options)
            Twitter::Bootstrap::Components::ButtonGroup.new(options).perform
          end

          def bootstrap_card(options)
            Twitter::Bootstrap::Components::Card.new(options).perform
          end

          def bootstrap_carousel(options)
            Twitter::Bootstrap::Components::Carousel.new(options).perform
          end

          def bootstrap_collapse(options)
            Twitter::Bootstrap::Components::Collapse.new(options).perform
          end

          def bootstrap_dropdown(options)
            Twitter::Bootstrap::Components::Dropdown.new(options).perform
          end

          def bootstrap_form(options)
            Twitter::Bootstrap::Components::Form.new(options).perform
          end

          def bootstrap_input_group(options)
            ITwitter::Bootstrap::Components::nputGroup.new(options).perform
          end

          def bootstrap_jumbotron(options)
            Twitter::Bootstrap::Components::Jumbotron.new(options).perform
          end

          def bootstrap_list_group(options)
            Twitter::Bootstrap::Components::ListGroup.new(options).perform
          end

          def bootstrap_modal(options)
            Twitter::Bootstrap::Components::Modal.new(options).perform
          end

          def bootstrap_nav(options)
            Twitter::Bootstrap::Components::Nav.new(options).perform
          end

          def bootstrap_navbar(options)
            Twitter::Bootstrap::Components::Navbar.new(options).perform
          end

          def bootstrap_pagination(options)
            Twitter::Bootstrap::Components::Pagination.new(options).perform
          end

          def bootstrap_popover(options)
            Twitter::Bootstrap::Components::Popover.new(options).perform
          end

          def bootstrap_progress(options)
            Twitter::Bootstrap::Components::Progress.new(options).perform
          end

          def bootstrap_scrollspy(options)
            Twitter::Bootstrap::Components::Scrollspy.new(options).perform
          end

          def bootstrap_tooltip(options)
            Twitter::Bootstrap::Components::Tooltip.new(options).perform
          end
        end
      end
    end
  end
end

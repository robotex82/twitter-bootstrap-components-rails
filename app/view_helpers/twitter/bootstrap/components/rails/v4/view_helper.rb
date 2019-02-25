module Twitter
  module Bootstrap
    module Components
      module Rails
        module V4
          class ViewHelper < Rao::ViewHelper::Base
            def alert(options, &block)
              Twitter::Bootstrap::Components::V4::Alert.new(c, options, &block).perform
            end

            def badge(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Badge.new(c, options, &block).perform
            end

            def breadcrumb(options)
              Twitter::Bootstrap::Components::V4::Breadcrumb.new(options).perform
            end

            def button(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Button.new(c, options, &block).perform
            end

            def button_group(options = {}, &block)
              Twitter::Bootstrap::Components::V4::ButtonGroup.new(c, options, &block).perform
            end

            def card(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Card.new(c, options, &block).perform
            end

            def carousel(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Carousel.new(c, options, &block).perform
            end

            def carousel_item(options = {}, &block)
              Twitter::Bootstrap::Components::V4::CarouselItem.new(c, options, &block).perform
            end

            def collapse(options)
              Twitter::Bootstrap::Components::V4::Collapse.new(options).perform
            end

            def dropdown(options)
              Twitter::Bootstrap::Components::V4::Dropdown.new(options).perform
            end

            # add-on
            def flash
              Twitter::Bootstrap::Components::V4::Flash.new(c).perform
            end

            def form(options)
              Twitter::Bootstrap::Components::V4::Form.new(options).perform
            end

            def portrait_card(options = {}, &block)
              Twitter::Bootstrap::Components::V4::PortraitCard.new(c, options, &block).perform
            end

            # add-on
            def form_for(object, *args, &block)
              options = args.extract_options!
              simple_form_for(object, *(args << options.merge(builder: Twitter::Bootstrap::Components::Rails::V4::DefaultFormBuilder, :defaults => { :input_html => { :class => "form-control" } })), &block)
            end

            def input_group(options)
              Twitter::Bootstrap::Components::V4::InputGroup.new(options).perform
            end

            def jumbotron(options)
              Twitter::Bootstrap::Components::V4::Jumbotron.new(options).perform
            end

            def list_group(options)
              Twitter::Bootstrap::Components::V4::ListGroup.new(options).perform
            end

            def modal(options)
              Twitter::Bootstrap::Components::V4::Modal.new(options).perform
            end

            def nav(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Nav.new(c, options, &block).perform
            end

            def nav_item(options = {}, &block)
              Twitter::Bootstrap::Components::V4::NavItem.new(c, options, &block).perform
            end

            def navbar(options)
              Twitter::Bootstrap::Components::V4::Navbar.new(options).perform
            end

            def navbar_brand(options = {}, &block)
              Twitter::Bootstrap::Components::V4::NavbarBrand.new(c, options, &block).perform
            end

            def pagination(options)
              Twitter::Bootstrap::Components::V4::Pagination.new(options).perform
            end

            def popover(options)
              Twitter::Bootstrap::Components::V4::Popover.new(options).perform
            end

            def progress(options)
              Twitter::Bootstrap::Components::V4::Progress.new(options).perform
            end

            def scrollspy(options)
              Twitter::Bootstrap::Components::V4::Scrollspy.new(options).perform
            end

            def tooltip(options)
              Twitter::Bootstrap::Components::V4::Tooltip.new(options).perform
            end

            # subhelpers

            def card_block(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Card::Block.new(c, options, &block).perform
            end

            def card_header(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Card::Header.new(c, options, &block).perform
            end

            def card_blockquote(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Card::Blockquote.new(c, options, &block).perform
            end

            def card_footer(options = {}, &block)
              Twitter::Bootstrap::Components::V4::Card::Footer.new(c, options, &block).perform
            end
          end
        end
      end
    end
  end
end
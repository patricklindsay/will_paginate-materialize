require "materialize_pagination/version"

module MaterializePagination
  # MaterializeCSS UI Framework WillPaginate LinkRenderer
  module MaterializeRenderer

    # @return [String] list of pagination links
    def html_container(html)
      tag :div, tag(:ul, html, :class => "pagination"), class: 'row'
    end

    # @return [String] rendered pagination link
    def page_number(page)
      classes = page == current_page ? 'active' : 'waves-effect'
      tag :li, link(page, page, :rel => rel_value(page)), :class => classes
    end

    # @return [String] rendered gap between pagination links
    def gap
      tag :li, link('&hellip;'.html_safe, '#'), :class => 'disabled'
    end

    # @return [String] rendered previous and next arrow links
    def previous_or_next_page(page, text, classname)
      classes = [(classname if @options[:page_links]), (page ? 'waves-effect' : 'disabled')].join(' ')
      direction = classname == 'previous_page' ? :left : :right

      case WillPaginate::Materialize.configuration.iconset
      when :material_design
        tag :li, link("<i class='material-icons'>chevron_#{direction}</i>".html_safe, page || '#!'), class: classes
      when :font_awesome
        tag :li, link("<i class='fas fa-chevron-#{direction}'></i>")
      else
        raise 'Iconset not found'
      end
    end
  end
end

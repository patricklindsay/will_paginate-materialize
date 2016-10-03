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
      classes = ['waves-effect', ('active' if page == current_page)].join(' ')

      tag :li, link(page, page, :rel => rel_value(page)), :class => classes
    end

    # @return [String] rendered gap between pagination links
    def gap
      tag :li, link('&hellip;'.html_safe, '#'), :class => 'disabled'
    end

    # @return [String] rendered previous and next arrow links
    def previous_or_next_page(page, text, classname)
      classes = [(classname if @options[:page_links]), ('disabled' unless page)].join(' ')
      chevron_direction = classname == 'previous_page' ? 'left' : 'right'

      tag :li, link("<i class='fa fa-arrow-#{chevron_direction}' aria-hidden='true'></i>".html_safe, page || '#!'), class: classes
    end
  end
end

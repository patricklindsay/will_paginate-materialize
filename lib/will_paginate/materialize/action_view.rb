require "will_paginate/view_helpers/action_view"
require "will_paginate/materialize/materialize_link_renderer"

module Willpaginate
  module Materialize
    # A custom renderer class for WillPaginate that produces markup suitable for use with MaterializeCSS
    class Rails < WillPaginate::ActionView::LinkRenderer
      include MaterializeLinkRenderer
    end
  end
end

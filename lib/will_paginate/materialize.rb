require "will_paginate/materialize/version"
require "will_paginate/materialize/materialize_link_renderer"

module WillPaginate
  module Materialize
    ActionView::Base.send :include, MaterializeHelper
  end
end

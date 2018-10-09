$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'will_paginate/materialize'

RSpec::Expectations.configuration.on_potential_false_positives = :nothing
require 'will_paginate'

require "materialize_pagination/action_view" if defined?(ActionView)
require 'materialize_pagination/railtie' if defined?(Rails)

module WillPaginate::Materialize
  class Configuration
    def initialize
      @iconset = :material_design
    end

    def valid_iconsets
      [
        :material_design, :font_awesome
      ]
    end 

    def iconset
      @iconset
    end

    def iconset=(value)
      if self.valid_iconsets.include? value.to_sym
        @iconset = value.to_sym
      else
        raise "Iconset not valid. Valid options are: #{self.valid_iconsets.to_s}"
      end
    end
  end

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
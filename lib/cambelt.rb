require "cambelt/version"
require "cambelt/configuration"
require "cambelt/helpers"

module Cambelt
  class << self
    attr_accessor :configuration
    
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
    
    def placeholder(opts={})
      args = opts_to_args(opts)
      "//cambelt.co/#{args[:width]}x#{args[:height]}/#{args[:text].gsub(" ", "+")}?font=#{args[:font]}&font_size=#{args[:font_size]}&color=#{args[:bg_color]},#{args[:fg_color]}"
    end
    
    
    private
    def opts_to_args(opts)
      self.configuration ||= Configuration.new
      self.configuration.to_hash.merge(opts)
    end
    
  end
end

if defined? Rails
  require 'rails-helper'
end

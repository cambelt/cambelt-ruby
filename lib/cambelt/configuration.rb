module Cambelt
  class Configuration
    attr_accessor :width, :height, :font, :font_size, :text

    def initialize
      @width = 640
      @height = 360
      @font = "Questrial"
      @font_size = 48
      @text = "Sample Text"
      @bg_color = "#cccccc"
      @fg_color = "#333333"
    end
    
    def to_hash
      self.instance_variables.inject({}) { |hash,var| hash[var[1..-1].to_sym] = self.instance_variable_get(var); hash }
    end
  end
end
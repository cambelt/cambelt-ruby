module Cambelt
  module Helpers
    module Placeholder
      class << self
        def placeholder_image_tag(cambelt_opts={}, image_opts={})
          string = Cambelt.placeholder(cambelt_opts)
          image_tag(string, image_opts)
        end
  
        private
        def image_tag(link, options)
          string = "<img src=\"#{link}\" "
          options.each{ |key, val| string << "#{key}=\"#{val}\"" }
          string << ' />'
          string
        end
      end
    end
  end
end
module Cambelt
  module Helpers
    module Placeholder
        def placeholder_image_tag(cambelt_opts={}, image_opts={})
          string = Cambelt.placeholder(cambelt_opts)
          if defined? Rails
            image_tag(string, image_opts).html_safe
          else
            image_tag(string, image_opts)
          end
        end
        alias_method :placeholder, :placeholder_image_tag
        
        private
        def image_tag(link, options)
          string = "<img src=\"#{link}\" "
          options.each{ |key, val| string << "#{key}=\"#{val}\" " }
          string << ' />'
          string
        end
    end
  end
end
require 'action_view/helpers'
ActionView::Helpers::AssetTagHelper.module_eval do
  include Cambelt::Helpers::Placeholder
  #def placeholder_image_tag(cambelt_opts={}, image_opts={})
  #  string = Cambelt.placeholder(cambelt_opts)
  #  image_tag(string, image_opts)
  #end
  #alias_method :placeholder, :placeholder_image_tag
end
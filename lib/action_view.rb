ActionView::Helpers::AssetTagHelper.module_eval do
  def placeholder_image_tag(cambelt_opts={}, image_opts={})
    string = Cambelt.placeholder(cambelt_opts)
    image_tag(string, image_opts)
  end
end
require 'action_view/helpers'
ActionView::Helpers::AssetTagHelper.module_eval do
  include Cambelt::Helpers::Placeholder
end
# encoding: utf-8

module Sugarcrm
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      
      desc 'Creates a Cambelt gem initializer at config/initializers/cambelt.rb'

      def self.source_root
        @_cambelt_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def create_initializer_file
        template 'initializer.rb', File.join('config', 'initializers', 'cambelt.rb')
      end

    end
  end
end
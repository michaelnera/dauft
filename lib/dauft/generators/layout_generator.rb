require 'rails/generators'

module Dauft
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :actions, :type => :array, :default => ['application']


      def generate_layout
        initialize_arguments

        template "layouts/#{file_name}.html.erb", "app/views/layouts/#{file_name}.html.erb"
      end


      private
      
      def initialize_arguments
        @layout_name = actions[0] if actions[0]
        @controller_name = actions[1] if actions[1]
      end


      def file_name
        @layout_name.underscore.downcase
      end

    end
  end
end



require 'rails/generators'

module Dauft
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :layout_name, :type => :array, :default => 'application'


      def generate_layout
        template "layouts/#{file_name}.html.erb", "app/views/layouts/#{file_name}.html.erb"
      end


      private
      
      def file_name
        layout_name.underscore.downcase
      end

    end
  end
end



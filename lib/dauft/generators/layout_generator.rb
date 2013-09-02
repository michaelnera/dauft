require 'rails/generators'

module Dauft
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :layout_name, :type => :string, :default => "application"

      def generate_basic_layout
        template 'layouts/application.html.erb', "app/views/layouts/#{file_name}.html.erb"
      end

      private
      def file_name
        layout_name.underscore.downcase
      end

    end
  end
end

require 'rails/generators'

module Dauft
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :actions, :type => :array, :default => "application", :require => false


      def generate_layout
        initialize_arguments

        if layout_exists?
          print 'creating #{file_name}.html.erb...'
          template 'layouts/#{file_name}.html.erb', "app/views/layouts/#{file_name}.html.erb"
        end
      end


      private
      
      def initialize_arguments args
        
      end


      def file_name
        layout_name.underscore.downcase
      end

      
      def layout_exists?
        File.exist?("#{file_name}.html.erb")
      end



    end
  end
end



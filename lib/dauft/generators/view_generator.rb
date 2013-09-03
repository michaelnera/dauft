require 'rails/generators'

module Dauft
  module Generators
    class ViewGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :layout_name, :type => :string, :required => true, :banner => 'template_name'
      argument :controller_name, :type => :string, :required => true, :banner => 'controller'
      argument :actions, :type => :array, :required => true, :banner => 'action action'


      def generate_views
        initialize_arguments
        generate_action_files
      end


      private
      
      def initialize_arguments
        @full_directory_path = File.join(Dauft.destination, controller_name)
        directory_path = controller_name.split('/')
#        @controller = directory_path.pop
#        @namespace = directory_path[0] if directory_path[0]
        @namespace_folder = "#{Dauft.destination}/#{@namespace}"
        @controller_folder = "#{Dauft.destination}/#{controller_name}"
      end


      def template_name
        layout_name.underscore.downcase
      end

     
      def generate_directory
        return false unless File.directory?(@full_directory_path)

        unless File.directory? @namespace_folder
          Dir.mkdir @namespace_folder
        end

        unless File.directory? @controller_folder
          Dir.mkdir @controller_folder
        end
      end


      def generate_action_files
        actions.each do |action|
          copy_file "contents/#{template_name}.html.erb", "#{@full_directory_path}/#{action}.html.erb"
        end
      end

    end
  end
end

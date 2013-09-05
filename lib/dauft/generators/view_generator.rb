require 'rails/generators'

module Dauft
  module Generators
    class ViewGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      argument :layout_name, :type => :string, :required => true, :banner => 'template_name'
      argument :controller_name, :type => :string, :required => true, :banner => 'controller'
      argument :actions, :type => :array, :required => true, :banner => 'action action'


      def generate_views
        full_directory_path = File.join(Dauft.destination, '/', controller_name)

        actions.each do |action|
          copy_file "contents/#{template_name}.html.erb", "#{full_directory_path}/#{action}.html.erb"
        end
      end


      private
      
      def template_name
        layout_name.underscore.downcase
      end

    end
  end
end

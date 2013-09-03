require 'dauft/version'
require 'dauft/engine'
require 'dauft/generators/layout_generator'
require 'dauft/generators/view_generator'

module Dauft

  def self.destination
    @destination ||= 'app/views'
  end


  def self.scss_path
    '../scss/'
  end
    
end

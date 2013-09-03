module Dauft
  class Engine < Rails::Engine
    add_paths_block = lambda { |app|
      app.config.assets.paths << File.expand_path("../../../scss", __FILE__)
    }
  end
end

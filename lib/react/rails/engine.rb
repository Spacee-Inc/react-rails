module React
  module Rails
    class Engine < ::Rails::Engine
      initializer "react_rails.setup_engine", :after => "sprockets.environment", :group => :all do |app|
        sprockets_env = app.assets || Sprockets # Sprockets 3.x expects this in a different place
        sprockets_env.register_engine(".jsx", React::JSX::Template)
      end
    end
  end
end

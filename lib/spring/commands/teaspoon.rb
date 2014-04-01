require "spring/commands/teaspoon/version"

module Spring
  module Commands
    module Teaspoon
      class Engine
        def env(*)
          "test"
        end

        def exec_name
          "teaspoon"
        end
      end

      Spring.register_command "teaspoon", Teaspoon::Engine.new
      Spring::Commands::Rake.environment_matchers[/^spec($|:)/] = "test"
    end
  end
end

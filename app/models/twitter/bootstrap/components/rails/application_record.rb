module Twitter
  module Bootstrap
    module Components
      module Rails
        class ApplicationRecord < ActiveRecord::Base
          self.abstract_class = true
        end
      end
    end
  end
end

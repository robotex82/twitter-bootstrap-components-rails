module Twitter
  module Bootstrap
    module Components
      module Rails
        class ApplicationMailer < ActionMailer::Base
          default from: 'from@example.com'
          layout 'mailer'
        end
      end
    end
  end
end

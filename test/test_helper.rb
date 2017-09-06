require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

FactoryGirl.reload

Wrong.config.color

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  include Wrong
end

module Oversight
  class User < ActiveRecord::Base
    include Concerns::Models::User
  end
end

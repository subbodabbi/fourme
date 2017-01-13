class User < ActiveRecord::Base
  include Clearance::User

  has_many :websites
  enum user_type: [:user, :partner, :admin]

end

#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_one :profile, dependent: :destroy
  has_many :recipes

  accepts_nested_attributes_for :profile, allow_destroy: true, update_only: true
end

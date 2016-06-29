class Url < ActiveRecord::Base
  validates_presence_of :long_url
end

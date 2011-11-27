class KalplanTltle < ActiveRecord::Base
  belongs_to :teacher
  has_many :KalplanBodies
end

class KalplanTltle < ActiveRecord::Base
  belongs_to :teacher
  has_many :Kbodies
end

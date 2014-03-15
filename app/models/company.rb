class Company < ActiveRecord::Base
  has_many :auditions
  has_many :associates
end
